clc
clear
close all

%% Parameter Declaration
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

%% Symbolic Forward Kinematics
wristKin = ManipulatorKinematics(DH);
[Eul, Pos] = wristKin.CalculateFK;

fprintf('--- Symbolic FK ---\n');
disp(Pos);
disp(Eul);

%% Jacobians
Jg = wristKin.Jacobian;
Ja = wristKin.Jacobian('Type', 'analytical');

fprintf('--- Geometric Jacobian Jg ---\n');  disp(Jg);
fprintf('--- Analytical Jacobian Ja ---\n'); disp(Ja);

%% Inverse-Kinematics Validation (Rows option)
fprintf('\n ================   Inverse Kinematics Validation   ================ \n');
RowsSel = [4, 5, 6]; % roll-pitch-yaw

FKFun = wristKin.CalculateFK('Rows', RowsSel, 'Return', 'handle');
JFun  = wristKin.Jacobian('Type', 'analytical', ...
    'Rows', RowsSel, ...
    'Return', 'handle');

qDes = [pi/3; -pi/4; pi/8];
XDes = FKFun(qDes);
q0    = [0; 0; 0];

fprintf('--- Newton IK ---\n');
[qN, ErrN] = IK_Newton(FKFun, JFun, q0, XDes, 50, 1e-8, 1e-4);
fprintf('Iterations: %d, final err = %.3e, q = [% .4f  % .4f % .4f]\n', ...
    numel(ErrN), ErrN(end), qN);

fprintf('\n--- Gradient-Descent IK ---\n');
[qG, errG] = IK_Gradient(FKFun, JFun, q0, XDes, 300, 1e-8, 0.4); % α = 0.05
fprintf('Iterations: %d, final err = %.3e, q = [% .4f  % .4f % .4f]\n', ...
    numel(errG), errG(end), qG);

fprintf('\nGround-Truth q_des = [% .4f  % .4f % .4f]\n' , qDes);
fprintf('q Error (Newton)     = [% .3e  % .3e  % .3e]\n', qN-qDes);
fprintf('q Error (Gradient)   = [% .3e  % .3e  % .3e]\n', qG-qDes);

%% Comprehensive Kinematics Tests
fprintf('\n =====  Kinematics Return Types & Code Generation  ===== \n');

q_num  = qDes;
FK_fun = wristKin.CalculateFK('Return', 'handle');
fprintf('FK handle at q = [%.2f %.2f %.2f]:\n', q_num); disp(FK_fun(q_num));

wristKin.CalculateFK('Generate', 'mfile', 'File', 'Wrist_fk');
FK_mfile = Wrist_fk(q_num);
fprintf('FK mfile output: '); disp(FK_mfile);

wristKin.CalculateFK('Generate', 'ccode', 'File', 'Wrist_fk');

Jg_sym = wristKin.Jacobian;
Ja_sym = wristKin.Jacobian('Type', 'analytical');
Jg_fun = wristKin.Jacobian('Return', 'handle');
Ja_fun = wristKin.Jacobian('Type', 'analytical', 'Return', 'handle');

wristKin.Jacobian('Generate', 'mfile', 'File', 'Wrist_jac_geo');
wristKin.Jacobian('Generate', 'ccode', 'File', 'Wrist_jac_geo');