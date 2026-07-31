clc
clear
close all

%% Parameter Declaration
bodies = ReadMassProperties('MassProperties.txt');

Link1 = bodies(1);
Link2 = bodies(2);
Link3 = bodies(3);
Base  = bodies(4);

L1 = 0; L2 = 0; L3 = 0;

alpha = [-pi/2, +pi/2, +pi/2];
a     = [L1,       L2,    L3];
d     = [0,         0,     0];
theta = [-pi/2, +pi/2,     0];
type  = 'rrr';

DH    = DHStruct('alpha', alpha, ...
                 'a',         a, ...
                 'd',         d, ...
                 'theta', theta, ...
                 'type',   type, ...
                 'notation', 'modified');

M = [Link1.Mass, Link2.Mass, Link3.Mass];
L = [L1, L2, L3];
R = [0.05, 0.05, 0.05];

I1 = Link1.InertiaCOM;
I2 = Link2.InertiaCOM;
I3 = Link3.InertiaCOM;
I  = {I1, I2, I3};

COM = [Link1.COM';
       Link2.COM';
       Link3.COM'];

DynPar = DynStruct('Mass',    M, ...
                   'Length',  L, ...
                   'Radius',  R, ...
                   'Inertia', I, ...
                   'DH',     DH, ...
                   'COM',    COM);

%% Dynamics Validation (Symbolic and Numeric)

% Normal Gravity Direction
fprintf('\n ================   Dynamics Validation(g = [0, 0, -9.81])   ========================== \n');
wristDyn = ManipulatorDynamics(DynPar);

B = vpa(expand(wristDyn.MassMatrix), 5);  disp('Symbolic Mass matrix B(q):');               disp(B);
C = vpa(expand(wristDyn.Coriolis), 5);    disp('Symbolic Coriolis matrix C(q, qd):');       disp(C);
g = vpa(expand(wristDyn.Gravity), 5);     disp('Symbolic gravity vector g(q):');            disp(g);
Y = vpa(expand(wristDyn.Regressor), 5);   disp('Symbolic regressor matrix Y(qdd, qd, q):'); disp(Y);

%% Comprehensive Dynamics Tests
fprintf('\n =====  Dynamics Return Types & Code Generation  ===== \n');
wristDyn = ManipulatorDynamics(DynPar, 'Gravity', [0, 0, -9.81]);

% Nominal constant motion profile
q_num   = [-pi/7; -pi/6; pi/12];
qd_num  = [  0.1;  -0.2;   0.6];
qdd_num = [-0.05;   0.2;   0.1];

% Symbolic terms
B_sym = wristDyn.MassMatrix;  C_sym = wristDyn.Coriolis;
g_sym = wristDyn.Gravity;     Y_sym = wristDyn.Regressor;

% Handles
B_fun = wristDyn.MassMatrix('Return', 'handle');
C_fun = wristDyn.Coriolis  ('Return', 'handle');
g_fun = wristDyn.Gravity   ('Return', 'handle');
Y_fun = wristDyn.Regressor ('Return', 'handle');

fprintf('B handle at q_num:\n');                    disp(B_fun(q_num));
fprintf('C handle at (q_num, qd_num):\n');          disp(C_fun(q_num, qd_num));
fprintf('g handle at q_num:\n');                    disp(g_fun(q_num));
fprintf('Y handle at (qdd_num, qd_num, q_num):\n'); disp(Y_fun(qdd_num, qd_num, q_num));

% Generate MATLAB files
wristDyn.MassMatrix('Generate', 'mfile', 'File', 'Wrist_dyn');
wristDyn.Coriolis  ('Generate', 'mfile', 'File', 'Wrist_dyn');
wristDyn.Gravity   ('Generate', 'mfile', 'File', 'Wrist_dyn');
wristDyn.Regressor ('Generate', 'mfile', 'File', 'Wrist_dyn');

% Call generated MATLAB functions
B_mfile = Wrist_dyn_B(q_num);
C_mfile = Wrist_dyn_C(q_num, qd_num);
g_mfile = Wrist_dyn_g(q_num);
Y_mfile = Wrist_dyn_Y(qdd_num, qd_num, q_num);

% Generate C-code files
wristDyn.MassMatrix('Generate', 'ccode', 'File', 'Wrist_dyn');
wristDyn.Coriolis  ('Generate', 'ccode', 'File', 'Wrist_dyn');
wristDyn.Gravity   ('Generate', 'ccode', 'File', 'Wrist_dyn');
wristDyn.Regressor ('Generate', 'ccode', 'File', 'Wrist_dyn');

% Generate MEX functions
try
    wristDyn.MassMatrix('Generate', 'mex', 'File', 'Wrist_dyn');
    wristDyn.Coriolis  ('Generate', 'mex', 'File', 'Wrist_dyn');
    wristDyn.Gravity   ('Generate', 'mex', 'File', 'Wrist_dyn');
    wristDyn.Regressor ('Generate', 'mex', 'File', 'Wrist_dyn');

    % Call generated MEX functions
    B_mex = Wrist_dyn_B(q_num);
    C_mex = Wrist_dyn_C(q_num, qd_num);
    g_mex = Wrist_dyn_g(q_num);
    Y_mex = Wrist_dyn_Y(qdd_num, qd_num, q_num);

    fprintf('B mex at q:');            disp(B_mex);
    fprintf('C mex at (q, qd):');      disp(C_mex);
    fprintf('g mex at q:');            disp(g_mex);
    fprintf('Y mex at (qdd, qd, q):'); disp(Y_mex);

catch ME
    warning(ME.identifier, '%s', ME.message);
end

%%  ODE Function & Simulation
fprintf('\n =====  ODE RHS (symbolic, handle, mfile)  ===== \n');
ODE_sym = wristDyn.ODEFunction('Return', 'symbolic');
ODE_fun = wristDyn.ODEFunction;
wristDyn.ODEFunction('Generate', 'mfile', 'File', 'Wrist_ode');
ODE_mfile = @Wrist_ode;

% Zero-Input Simulation for 10 s
x0 = [q_num; qd_num];
Tau = @(t) zeros(3, 1);
[tSim, xSim] = ode45(@(t, x) ODE_fun(t, x, Tau(t)), [0 10], x0);

figure('Name', 'Wrist Zero-Input Response');
subplot(2, 1, 1);
plot(tSim, xSim(:, 1:3));
grid on;
legend('q1', 'q2', 'q3');
ylabel('Position [rad]');

subplot(2, 1, 2);
plot(tSim, xSim(:, 4:6));
grid on;
legend('q1dot', 'q2dot', 'q3dot');
xlabel('Time [s]');
ylabel('Velocity [rad/s]');

%% Performance Benchmark
fprintf('\n =====  Performance Benchmark (1000 evaluations)  ===== \n');
NIter = 1000;
qSamples   = (rand(3, NIter) - 0.5) * 2*pi;
qdSamples  = randn(3, NIter) * 0.5;
qddSamples = randn(3, NIter) * 0.25;

% Mass Matrix
fprintf('\nMass matrix B(q):\n');

% Handle benchmark
tic;
for k = 1:NIter
    B_fun(qSamples(:, k));
end
th = toc;

% mfile benchmark
tic;
for k = 1:NIter
    Wrist_dyn_B(qSamples(:, k));
end
tm = toc;

% mex benchmark (if exists)
if exist(['Wrist_dyn_B.' mexext], 'file')
    tic;
    for k = 1:NIter
        Wrist_dyn_B(qSamples(:, k));
    end
    tx = toc;
else
    tx = NaN;
end
fprintf('Handle: %.4f s, mfile: %.4f s, mex: %.4f s\n', th, tm, tx);

% Coriolis matrix
fprintf('\nCoriolis C(q, qd):\n');

% Handle
tic;
for k = 1:NIter
    C_fun(qSamples(:, k), qdSamples(:, k));
end
tch = toc;

% mfile
tic;
for k = 1:NIter
    Wrist_dyn_C(qSamples(:, k), qdSamples(:, k));
end
tcm = toc;

% mex
if exist(['Wrist_dyn_C.' mexext], 'file')
    tic;
    for k = 1:NIter
        Wrist_dyn_C(qSamples(:, k), qdSamples(:, k));
    end
    tcx = toc;
else
    tcx = NaN;
end
fprintf('Handle: %.4f s, mfile: %.4f s, mex: %.4f s\n', tch, tcm, tcx);

% Gravity vector
fprintf('\nGravity g(q):\n');

% Handle
tic;
for k = 1:NIter
    g_fun(qSamples(:, k));
end
tgh = toc;

% mfile
tic;
for k = 1:NIter
    Wrist_dyn_g(qSamples(:, k));
end
tgm = toc;

% mex
if exist(['Wrist_dyn_g.' mexext], 'file')
    tic;
    for k = 1:NIter
        Wrist_dyn_g(qSamples(:, k));
    end
    tgx = toc;
else
    tgx = NaN;
end
fprintf('Handle: %.4f s, mfile: %.4f s, mex: %.4f s\n', tgh, tgm, tgx);

% Regressor matrix
fprintf('\nRegressor Y(qdd, qd, q):\n');

% Handle
tic;
for k = 1:NIter
    Y_fun(qddSamples(:, k), qdSamples(:, k), qSamples(:, k));
end
tyh = toc;

% mfile
tic;
for k = 1:NIter
    Wrist_dyn_Y(qddSamples(:, k), qdSamples(:, k), qSamples(:, k));
end
tym = toc;

% mex
if exist(['Wrist_dyn_Y.' mexext], 'file')
    tic;
    for k = 1:NIter
        Wrist_dyn_Y(qddSamples(:, k), qdSamples(:, k), qSamples(:, k));
    end
    tyx = toc;
else
    tyx = NaN;
end
fprintf('Handle: %.4f s, mfile: %.4f s, mex: %.4f s\n', tyh, tym, tyx);

%% ODE RHS Performance
fprintf('\nODE RHS x_dot (1000 evaluations)\n');

% Handle timing
tic;
for k = 1:NIter
    ODE_fun(0, [qSamples(:, k); qdSamples(:, k)], Tau(0));
end
toh = toc;

% mfile timing
for k = 1:NIter
    ODE_mfile(0, [qSamples(:, k); qdSamples(:, k)], Tau(0));
end
tom = toc;

fprintf('ODE handle: %.4f s, mfile: %.4f s\n', toh, tom);
