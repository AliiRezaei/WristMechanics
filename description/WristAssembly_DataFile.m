% Simscape(TM) Multibody(TM) version: 25.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(62).translation = [0.0 0.0 0.0];
smiData.RigidTransform(62).angle = 0.0;
smiData.RigidTransform(62).axis = [0.0 0.0 0.0];
smiData.RigidTransform(62).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 0];  % mm
smiData.RigidTransform(1).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(1).axis = [-0 -0 -1];
smiData.RigidTransform(1).ID = "UCS[Link1:CS1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0 0 0];  % mm
smiData.RigidTransform(2).angle = 0;  % rad
smiData.RigidTransform(2).axis = [0 0 0];
smiData.RigidTransform(2).ID = "UCS[BaseFixed:CS0]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 0];  % mm
smiData.RigidTransform(3).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(3).axis = [0 0 1];
smiData.RigidTransform(3).ID = "UCS[Link2:CS2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [0 0 0];  % mm
smiData.RigidTransform(4).angle = 0;  % rad
smiData.RigidTransform(4).axis = [0 0 0];
smiData.RigidTransform(4).ID = "UCS[Link3:CS3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 0];  % mm
smiData.RigidTransform(5).angle = pi/2;  % rad
smiData.RigidTransform(5).axis = [0 -1 0];
smiData.RigidTransform(5).ID = "B[Link1-2:-:Link2-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [0 0 0];  % mm
smiData.RigidTransform(6).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(6).axis = [0.57735026918962562 0.57735026918962562 0.57735026918962562];
smiData.RigidTransform(6).ID = "F[Link1-2:-:Link2-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [4.9184530377267852e-11 -1.8586962586159997e-12 -186.75000000002248];  % mm
smiData.RigidTransform(7).angle = 1.1191070116434506e-13;  % rad
smiData.RigidTransform(7).axis = [-0.0019841230786227524 -0.9999980316258672 1.1102208392908724e-16];
smiData.RigidTransform(7).ID = "B[Link1-2:-:BaseFixed-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [0 0 0];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962562 -0.57735026918962562 -0.57735026918962595];
smiData.RigidTransform(8).ID = "F[Link1-2:-:BaseFixed-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 -91.000000000000014];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = "B[Link3-3:-:Link2-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [-91 -9.4801245579236083e-16 0];  % mm
smiData.RigidTransform(10).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(10).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(10).ID = "F[Link3-3:-:Link2-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 0 0];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = "B[BaseFixed-2:-:]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [0 0 0];  % mm
smiData.RigidTransform(12).angle = 0;  % rad
smiData.RigidTransform(12).axis = [0 0 0];
smiData.RigidTransform(12).ID = "F[BaseFixed-2:-:]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [5.6799484910612397e-13 -2.6600426412749073e-12 248.39999999997775];  % mm
smiData.RigidTransform(13).angle = 2.0139596118442475;  % rad
smiData.RigidTransform(13).axis = [-0.63227897743266415 0.54782446764297899 -0.54782446764305026];
smiData.RigidTransform(13).ID = "AssemblyGround[Link1-2:Pulley70mm-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [-9.5125432924084232e-12 -2.6216400268531226e-12 338.24999999997772];  % mm
smiData.RigidTransform(14).angle = 3.1415926535897123;  % rad
smiData.RigidTransform(14).axis = [-0.68960510091410354 0.72418561487594413 -3.8846703987672275e-14];
smiData.RigidTransform(14).ID = "AssemblyGround[Link1-2:Link1Shaft-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [190.00000000002944 -5.7754552158449574e-12 -2.1943719442868175e-11];  % mm
smiData.RigidTransform(15).angle = 2.8118776513426806;  % rad
smiData.RigidTransform(15).axis = [-1 -1.626519111362995e-16 1.4456775049894033e-16];
smiData.RigidTransform(15).ID = "AssemblyGround[Link1-2:angular contact ball bearing_68_din-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [-189.99999999997107 -5.9005895565810123e-12 -2.2220083286243991e-11];  % mm
smiData.RigidTransform(16).angle = 2.5449540163464883;  % rad
smiData.RigidTransform(16).axis = [-1 -1.6237459315097901e-16 1.3869133695030683e-16];
smiData.RigidTransform(16).ID = "AssemblyGround[Link1-2:angular contact ball bearing_68_din-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [244.30000000003929 1.5002608893091957e-12 -99.999999999994913];  % mm
smiData.RigidTransform(17).angle = 2.9028048941824722;  % rad
smiData.RigidTransform(17).axis = [0.70200018907965356 0.11996444916787395 0.70200018907973172];
smiData.RigidTransform(17).ID = "AssemblyGround[Link1-2:Flange-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [272.30000000003929 1.5096687831661807e-12 -99.999999999991786];  % mm
smiData.RigidTransform(18).angle = 1.653315235773263;  % rad
smiData.RigidTransform(18).axis = [-0.27595055885456427 -0.9207076507424734 0.27595055885453357];
smiData.RigidTransform(18).ID = "AssemblyGround[Link1-2:Pulley16mm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [241.80000000003932 1.4404129293879958e-12 -99.999999999995183];  % mm
smiData.RigidTransform(19).angle = 2.8269206204704935;  % rad
smiData.RigidTransform(19).axis = [-0.69815150392050085 0.69815150392048309 0.15864726643441013];
smiData.RigidTransform(19).ID = "AssemblyGround[Link1-2:MotorShell-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [4.7393962683152399e-11 -1.8515908312583987e-12 -170.75000000002245];  % mm
smiData.RigidTransform(20).angle = 2.0650539167148838;  % rad
smiData.RigidTransform(20).axis = [-0.59707958377438808 0.56722833613974533 -0.56722833613981205];
smiData.RigidTransform(20).ID = "AssemblyGround[Link1-2:BigBallBearing-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [229.20000000004057 -7.1244787064074808e-12 -99.999999999996476];  % mm
smiData.RigidTransform(21).angle = 2.0943951023932543;  % rad
smiData.RigidTransform(21).axis = [0.57735026918958099 -0.57735026918964838 0.57735026918964782];
smiData.RigidTransform(21).ID = "AssemblyGround[Link1-2:MotorCore-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [4.402034292638747e-11 0 -143.75000000002245];  % mm
smiData.RigidTransform(22).angle = 1.8906135196975209;  % rad
smiData.RigidTransform(22).axis = [-0.72222911010437918 -0.48907316043610261 0.48907316043602184];
smiData.RigidTransform(22).ID = "AssemblyGround[Link1-2:BigBallBearingInner-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [175.00000000002942 -6.785642881899521e-12 -2.4938513555252093e-12];  % mm
smiData.RigidTransform(23).angle = 2.0943951023931344;  % rad
smiData.RigidTransform(23).axis = [0.57735026918966936 0.57735026918960242 -0.57735026918960552];
smiData.RigidTransform(23).ID = "AssemblyGround[Link1-2:Link1LShapeConnectorFront-5]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [-174.99999999997104 -4.9294887626043309e-12 -4.1788807533351863e-11];  % mm
smiData.RigidTransform(24).angle = 2.0943951023932565;  % rad
smiData.RigidTransform(24).axis = [0.57735026918958177 -0.57735026918964905 0.57735026918964638];
smiData.RigidTransform(24).ID = "AssemblyGround[Link1-2:Link1LShapeConnectorFront-6]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [-8.8887181024903159e-13 -5.7770774361009807e-12 268.39999999997787];  % mm
smiData.RigidTransform(25).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(25).axis = [-1 -5.3430622222482909e-14 -5.876234540706136e-14];
smiData.RigidTransform(25).ID = "AssemblyGround[Link1-2:Link1LShapeConnectorSide-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [185.00000000003277 9.9999999999931664 -30.000000000001396];  % mm
smiData.RigidTransform(26).angle = 3.1415926535897896;  % rad
smiData.RigidTransform(26).axis = [0.70710678118650827 -1.9014126006858303e-15 0.70710678118658676];
smiData.RigidTransform(26).ID = "AssemblyGround[Link1-2:Link1LeftLShape-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [185.00000000002601 -10.000000000006846 29.999999999998593];  % mm
smiData.RigidTransform(27).angle = 1.570796326794784;  % rad
smiData.RigidTransform(27).axis = [2.5062670324996507e-15 1 -2.8254561520791047e-15];
smiData.RigidTransform(27).ID = "AssemblyGround[Link1-2:Link1RightLShape-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [4.5158321526628262e-11 -5.9252200378150214e-12 -143.75000000002234];  % mm
smiData.RigidTransform(28).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(28).axis = [-1 -5.3208608246608805e-14 -5.8586615221723106e-14];
smiData.RigidTransform(28).ID = "AssemblyGround[Link1-2:Link1LShapeConnectorBig-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [-184.99999999997434 9.9999999999951363 29.99999999995709];  % mm
smiData.RigidTransform(29).angle = 3.1415926535897896;  % rad
smiData.RigidTransform(29).axis = [-0.70710678118658699 1.9978992050802659e-15 0.70710678118650805];
smiData.RigidTransform(29).ID = "AssemblyGround[Link1-2:Link1RightLShape-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [-184.99999999996771 -10.00000000000489 -30.000000000042903];  % mm
smiData.RigidTransform(30).angle = 1.5707963267950085;  % rad
smiData.RigidTransform(30).axis = [-2.8451648428079419e-15 -1 -2.5259757232285324e-15];
smiData.RigidTransform(30).ID = "AssemblyGround[Link1-2:Link1LeftLShape-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [-185.00026364680468 19.999999999994984 30.072614510473802];  % mm
smiData.RigidTransform(31).angle = 1.5707963267950145;  % rad
smiData.RigidTransform(31).axis = [-2.8531324335522543e-15 -1 -2.5270044200689546e-15];
smiData.RigidTransform(31).ID = "AssemblyGround[Link1-2:Link1StellConnectors-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [0 273.64999999999998 -79.999999999999957];  % mm
smiData.RigidTransform(32).angle = 2.1949009614338975;  % rad
smiData.RigidTransform(32).axis = [-2.5075433917055663e-16 -1 -4.7247861472112031e-16];
smiData.RigidTransform(32).ID = "AssemblyGround[BaseFixed-2:MotorShell-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [0 333.25 0];  % mm
smiData.RigidTransform(33).angle = 1.8157012834368063;  % rad
smiData.RigidTransform(33).axis = [0.44175534327283161 -0.44175534327283145 -0.78083572752519825];
smiData.RigidTransform(33).ID = "AssemblyGround[BaseFixed-2:angular contact ball bearing_68_din-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [0 -188.75 0];  % mm
smiData.RigidTransform(34).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(34).axis = [-1 7.7652807092675236e-17 4.0607397290285547e-16];
smiData.RigidTransform(34).ID = "AssemblyGround[BaseFixed-2:ElbowHolder-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [0 -368.74999999999983 -280.00000000000017];  % mm
smiData.RigidTransform(35).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(35).axis = [-1 1.0074716806457052e-16 4.2245073569039667e-16];
smiData.RigidTransform(35).ID = "AssemblyGround[BaseFixed-2:RodLeft-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [0 -168.74999999999989 -280.00000000000017];  % mm
smiData.RigidTransform(36).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(36).axis = [-1 -0 3.7885518839045917e-16];
smiData.RigidTransform(36).ID = "AssemblyGround[BaseFixed-2:RodMiddle-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [0 318.25000000000017 -280.00000000000011];  % mm
smiData.RigidTransform(37).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(37).axis = [0 1 1.3877787807814457e-16];
smiData.RigidTransform(37).ID = "AssemblyGround[BaseFixed-2:RodRight-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [0 458.25000000000017 -280];  % mm
smiData.RigidTransform(38).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(38).axis = [0.57735026918962573 0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(38).ID = "AssemblyGround[BaseFixed-2:BasePlate-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [0 271.14999999999998 -80];  % mm
smiData.RigidTransform(39).angle = 2.4851781303878768;  % rad
smiData.RigidTransform(39).axis = [0.3405230262741194 -0.66484737668773097 0.66484737668773108];
smiData.RigidTransform(39).ID = "AssemblyGround[BaseFixed-2:Flange-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [0 284.05000000000007 -79.999999999998792];  % mm
smiData.RigidTransform(40).angle = 0;  % rad
smiData.RigidTransform(40).axis = [0 0 0];
smiData.RigidTransform(40).ID = "AssemblyGround[BaseFixed-2:MotorCore-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [0 248.24999999999997 -80];  % mm
smiData.RigidTransform(41).angle = 1.9428616707702797;  % rad
smiData.RigidTransform(41).axis = [0.68320572638692423 -0.51634771977424043 0.51634771977424043];
smiData.RigidTransform(41).ID = "AssemblyGround[BaseFixed-2:Pulley16mm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [0 -178.74999999999997 0];  % mm
smiData.RigidTransform(42).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(42).axis = [-1 8.7955291825149649e-17 4.5000009083754861e-16];
smiData.RigidTransform(42).ID = "AssemblyGround[BaseFixed-2:BigBallBearingHolder-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [-30 19.999999999999808 153.99999999999986];  % mm
smiData.RigidTransform(43).angle = 0;  % rad
smiData.RigidTransform(43).axis = [0 0 0];
smiData.RigidTransform(43).ID = "AssemblyGround[Link2-2:Link2StellConnectors-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(44).translation = [30.000000000000028 -10.000000000000092 -155.00000000000009];  % mm
smiData.RigidTransform(44).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(44).axis = [-3.6255720647915268e-16 1 0];
smiData.RigidTransform(44).ID = "AssemblyGround[Link2-2:Link2LShape-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(45).translation = [-29.999999999999915 9.9999999999999165 -154.99999999999991];  % mm
smiData.RigidTransform(45).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(45).axis = [1 1.1969591984239969e-16 0];
smiData.RigidTransform(45).ID = "AssemblyGround[Link2-2:Link2LShape-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(46).translation = [0 0 -145.00000000000011];  % mm
smiData.RigidTransform(46).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(46).axis = [-1.6927559320184399e-16 0.70710678118654746 -0.70710678118654757];
smiData.RigidTransform(46).ID = "AssemblyGround[Link2-2:Link2LShapeConnectorFront-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(47).translation = [0 0 141.00000000000011];  % mm
smiData.RigidTransform(47).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(47).axis = [3.0011983339363747e-16 -1 3.4347399903203238e-16];
smiData.RigidTransform(47).ID = "AssemblyGround[Link2-2:Link2BackShaft-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(48).translation = [30.000000000000078 9.9999999999999147 155.00000000000009];  % mm
smiData.RigidTransform(48).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(48).axis = [-2.3927220358302057e-16 -0 -1];
smiData.RigidTransform(48).ID = "AssemblyGround[Link2-2:Link2LShape-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(49).translation = [-29.999999999999904 -10.000000000000114 155.00000000000014];  % mm
smiData.RigidTransform(49).angle = 0;  % rad
smiData.RigidTransform(49).axis = [0 0 0];
smiData.RigidTransform(49).ID = "AssemblyGround[Link2-2:Link2LShape-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(50).translation = [124.99999999999996 0 0];  % mm
smiData.RigidTransform(50).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(50).axis = [-0.57735026918962562 -0.57735026918962595 -0.57735026918962584];
smiData.RigidTransform(50).ID = "AssemblyGround[Link2-2:Link2LShapeConnectorUpper-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(51).translation = [0 0 -141.00000000000009];  % mm
smiData.RigidTransform(51).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(51).axis = [-5.0220244629528546e-16 1 5.0220244629528546e-16];
smiData.RigidTransform(51).ID = "AssemblyGround[Link2-2:Link2FrontShaft-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(52).translation = [0 0 145.00000000000014];  % mm
smiData.RigidTransform(52).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(52).axis = [1.7172886266853778e-16 -0.70710678118654746 -0.70710678118654757];
smiData.RigidTransform(52).ID = "AssemblyGround[Link2-2:Link2LShapeConnectorFront-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(53).translation = [-130.00000000000003 0 0];  % mm
smiData.RigidTransform(53).angle = 0.74460014052996415;  % rad
smiData.RigidTransform(53).axis = [-1 0 1.6460066575128347e-16];
smiData.RigidTransform(53).ID = "AssemblyGround[Link2-2:angular contact ball bearing_68_din-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(54).translation = [0 0 -267.00000000000011];  % mm
smiData.RigidTransform(54).angle = 1.3485103920954966;  % rad
smiData.RigidTransform(54).axis = [-1.3516456761024326e-16 1.2805064299917781e-16 -1];
smiData.RigidTransform(54).ID = "AssemblyGround[Link2-2:Pulley40mm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(55).translation = [-125.00000000000003 0 0];  % mm
smiData.RigidTransform(55).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(55).axis = [-0.57735026918962584 0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(55).ID = "AssemblyGround[Link2-2:Link2LShapeConnectorLower-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(56).translation = [139.99999999999997 0 0];  % mm
smiData.RigidTransform(56).angle = 0.74460014052996415;  % rad
smiData.RigidTransform(56).axis = [-1 0 1.6460066575128347e-16];
smiData.RigidTransform(56).ID = "AssemblyGround[Link2-2:angular contact ball bearing_68_din-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(57).translation = [0 0 -115];  % mm
smiData.RigidTransform(57).angle = 0;  % rad
smiData.RigidTransform(57).axis = [0 0 0];
smiData.RigidTransform(57).ID = "AssemblyGround[Link3-3:Link3Body-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(58).translation = [0 0 91];  % mm
smiData.RigidTransform(58).angle = 2.0943951023931913;  % rad
smiData.RigidTransform(58).axis = [-0.57735026918962462 -0.57735026918962828 -0.57735026918962451];
smiData.RigidTransform(58).ID = "AssemblyGround[Link3-3:Link3UpperShaft-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(59).translation = [0 0 -91.000000000000014];  % mm
smiData.RigidTransform(59).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(59).axis = [-0.57735026918962584 0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(59).ID = "AssemblyGround[Link3-3:Link3LowerShaft-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(60).translation = [0 0 -204.30000000000004];  % mm
smiData.RigidTransform(60).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(60).axis = [1 0 5.3776427755281038e-17];
smiData.RigidTransform(60).ID = "AssemblyGround[Link3-3:MotorBackCap-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(61).translation = [0 0 -179.20000000000002];  % mm
smiData.RigidTransform(61).angle = 1.79780420428413;  % rad
smiData.RigidTransform(61).axis = [0.79534197865840972 -0.42862054137880856 -0.4286205413788084];
smiData.RigidTransform(61).ID = "AssemblyGround[Link3-3:MotorCore-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(62).translation = [0 0 -191.80000000000004];  % mm
smiData.RigidTransform(62).angle = 1.5707963267948961;  % rad
smiData.RigidTransform(62).axis = [1 -1.0785905885980302e-14 -1.0558455057798403e-14];
smiData.RigidTransform(62).ID = "AssemblyGround[Link3-3:MotorShell-3]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(33).mass = 0.0;
smiData.Solid(33).CoM = [0.0 0.0 0.0];
smiData.Solid(33).MoI = [0.0 0.0 0.0];
smiData.Solid(33).PoI = [0.0 0.0 0.0];
smiData.Solid(33).color = [0.0 0.0 0.0];
smiData.Solid(33).opacity = 0.0;
smiData.Solid(33).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.16961942708322994;  % kg
smiData.Solid(1).CoM = [0 5.9999999999999982 0];  % mm
smiData.Solid(1).MoI = [52.573191053623603 100.90403431413837 52.573191053623617];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [1 0.94901960784313721 0.89803921568627454];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Pulley70mm*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.06279435030949361;  % kg
smiData.Solid(2).CoM = [0 0 50.924999999999997];  % mm
smiData.Solid(2).MoI = [54.675158553882895 54.675158553882895 0.78492937886867009];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.65098039215686276 0.61960784313725492 0.58823529411764708];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Link1Shaft*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.0053684933134235096;  % kg
smiData.Solid(3).CoM = [0.083240769896684663 0 0];  % mm
smiData.Solid(3).MoI = [0.80818721915128988 0.43921243716050185 0.43921243716050185];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [1 0.94901960784313721 0.90980392156862744];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "angular contact ball bearing_68_din*:*DIN 628 - 7201B - 8,SI,NC,8_68";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.078113987753894693;  % kg
smiData.Solid(4).CoM = [0 0 5.6585809985912823];  % mm
smiData.Solid(4).MoI = [15.640324027370141 15.640324027370134 25.907488034296293];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [1 0.94901960784313721 0.89803921568627454];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Flange*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.004702587211305489;  % kg
smiData.Solid(5).CoM = [0 0 5.9999999999999991];  % mm
smiData.Solid(5).MoI = [0.16442260285243118 0.16442260285243115 0.19582916744222137];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [1 0.94901960784313721 0.89803921568627454];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Pulley16mm*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.21198122854104454;  % kg
smiData.Solid(6).CoM = [0 12.016408291123431 0];  % mm
smiData.Solid(6).MoI = [184.29493446114503 310.42583986510141 184.29493446114512];  % kg*mm^2
smiData.Solid(6).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(6).color = [1 0.94901960784313721 0.89803921568627454];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "MotorShell*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.79903267551402757;  % kg
smiData.Solid(7).CoM = [0 7.9999999999998597 0];  % mm
smiData.Solid(7).MoI = [1859.8151383151539 3685.5382158084572 1859.815138315153];  % kg*mm^2
smiData.Solid(7).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(7).color = [0.65098039215686276 0.61960784313725492 0.58823529411764708];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "BigBallBearing*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.46886595358717409;  % kg
smiData.Solid(8).CoM = [0 15.901188595711847 0];  % mm
smiData.Solid(8).MoI = [188.09730771709283 296.90587561949013 188.0973077170928];  % kg*mm^2
smiData.Solid(8).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(8).color = [1 0.94901960784313721 0.89803921568627454];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = "MotorCore*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.58844543675859695;  % kg
smiData.Solid(9).CoM = [0 21.500000000000068 0];  % mm
smiData.Solid(9).MoI = [988.04892543741926 1794.7585821137206 988.04892543741948];  % kg*mm^2
smiData.Solid(9).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(9).color = [1 0.94901960784313721 0.89803921568627454];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = "BigBallBearingInner*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.27464802185039361;  % kg
smiData.Solid(10).CoM = [0 9.9999999999999947 0];  % mm
smiData.Solid(10).MoI = [78.753826809335621 1382.4633518922633 1322.0193932062873];  % kg*mm^2
smiData.Solid(10).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(10).color = [1 1 1];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = "Link1LShapeConnectorFront*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.23674991540163784;  % kg
smiData.Solid(11).CoM = [0 10 0];  % mm
smiData.Solid(11).MoI = [63.154194175550053 495.57081374813981 448.19994726603238];  % kg*mm^2
smiData.Solid(11).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(11).color = [1 1 1];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = "Link1LShapeConnectorSide*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 0.21563430948970339;  % kg
smiData.Solid(12).CoM = [-90.963569336209829 10 -26.190916534163769];  % mm
smiData.Solid(12).MoI = [275.53140395513964 622.55991942544358 361.48701385606205];  % kg*mm^2
smiData.Solid(12).PoI = [0 184.45487821401292 0];  % kg*mm^2
smiData.Solid(12).color = [1 1 1];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = "Link1LeftLShape*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 0.35579519999999915;  % kg
smiData.Solid(13).CoM = [-160.27501112508861 10 -31.424988874911421];  % mm
smiData.Solid(13).MoI = [820.19701395137304 2848.2509248705232 2051.7735909191501];  % kg*mm^2
smiData.Solid(13).PoI = [0 760.98423545273624 0];  % kg*mm^2
smiData.Solid(13).color = [1 1 1];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = "Link1RightLShape*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(14).mass = 0.5702640951524558;  % kg
smiData.Solid(14).CoM = [0 10 0];  % mm
smiData.Solid(14).MoI = [817.16001334427347 4862.1371147155942 4082.9947077148222];  % kg*mm^2
smiData.Solid(14).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(14).color = [1 1 1];
smiData.Solid(14).opacity = 1;
smiData.Solid(14).ID = "Link1LShapeConnectorBig*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(15).mass = 0.63699321612447346;  % kg
smiData.Solid(15).CoM = [151.13955083246606 -20.000000000000004 -185.00026364683248];  % mm
smiData.Solid(15).MoI = [15848.469234277567 19127.489431726844 3868.8759155805374];  % kg*mm^2
smiData.Solid(15).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(15).color = [1 0.94901960784313721 0.90980392156862744];
smiData.Solid(15).opacity = 1;
smiData.Solid(15).ID = "Link1StellConnectors*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(16).mass = 2.142717711489063;  % kg
smiData.Solid(16).CoM = [-1.0471977755075387e-07 99.494169807181919 51.052188861668988];  % mm
smiData.Solid(16).MoI = [8417.4211468545764 8273.9047206768828 14002.042435042045];  % kg*mm^2
smiData.Solid(16).PoI = [5.4668039579112682 2.8367956014839837e-05 -3.5435811713423353e-05];  % kg*mm^2
smiData.Solid(16).color = [1 1 1];
smiData.Solid(16).opacity = 1;
smiData.Solid(16).ID = "ElbowHolder*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(17).mass = 1.1549497979301633;  % kg
smiData.Solid(17).CoM = [0 9.9999999999999929 -122.30725655003447];  % mm
smiData.Solid(17).MoI = [7655.1161472405302 10645.766343050102 3067.6468490049151];  % kg*mm^2
smiData.Solid(17).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(17).color = [1 1 1];
smiData.Solid(17).opacity = 1;
smiData.Solid(17).ID = "RodLeft*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(18).mass = 1.1549497979301633;  % kg
smiData.Solid(18).CoM = [0 9.9999999999999929 -122.30725655003447];  % mm
smiData.Solid(18).MoI = [7655.1161472405302 10645.766343050102 3067.6468490049151];  % kg*mm^2
smiData.Solid(18).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(18).color = [1 1 1];
smiData.Solid(18).opacity = 1;
smiData.Solid(18).ID = "RodMiddle*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(19).mass = 2.7070389536684463;  % kg
smiData.Solid(19).CoM = [0 10.000000000000002 -136.7914549286545];  % mm
smiData.Solid(19).MoI = [22182.276474403039 31094.594257607252 9092.7870467821103];  % kg*mm^2
smiData.Solid(19).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(19).color = [1 1 1];
smiData.Solid(19).opacity = 1;
smiData.Solid(19).ID = "RodRight*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(20).mass = 12.208209495632826;  % kg
smiData.Solid(20).CoM = [-473.32476573609398 10.000000000000007 0];  % mm
smiData.Solid(20).MoI = [86142.085617592791 985882.86669108493 900554.66170653433];  % kg*mm^2
smiData.Solid(20).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(20).color = [1 1 1];
smiData.Solid(20).opacity = 1;
smiData.Solid(20).ID = "BasePlate*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(21).mass = 0.11523361853367362;  % kg
smiData.Solid(21).CoM = [0 0 52.30649478307685];  % mm
smiData.Solid(21).MoI = [79.164990775023028 465.31116049330598 394.44064453019274];  % kg*mm^2
smiData.Solid(21).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(21).color = [1 1 1];
smiData.Solid(21).opacity = 0.5;
smiData.Solid(21).ID = "BigBallBearingHolder*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(22).mass = 0.75844532915556151;  % kg
smiData.Solid(22).CoM = [29.999999999999911 -20.112980457803722 -154.49999999999994];  % mm
smiData.Solid(22).MoI = [11279.869443915875 19607.92263780511 9030.3542062092893];  % kg*mm^2
smiData.Solid(22).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(22).color = [1 0.94901960784313721 0.90980392156862744];
smiData.Solid(22).opacity = 1;
smiData.Solid(22).ID = "Link2StellConnectors*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(23).mass = 0.18304593947593975;  % kg
smiData.Solid(23).CoM = [-75.929794725533981 10 -36.418830454850401];  % mm
smiData.Solid(23).MoI = [278.20212409133984 482.54241311573998 216.54335165612957];  % kg*mm^2
smiData.Solid(23).PoI = [0 180.52828066563117 0];  % kg*mm^2
smiData.Solid(23).color = [1 1 1];
smiData.Solid(23).opacity = 1;
smiData.Solid(23).ID = "Link2LShape*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(24).mass = 0.21524863916164486;  % kg
smiData.Solid(24).CoM = [0 10.000000000000002 0];  % mm
smiData.Solid(24).MoI = [57.114485516777847 310.50182213353634 267.73724589420141];  % kg*mm^2
smiData.Solid(24).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(24).color = [1 1 1];
smiData.Solid(24).opacity = 1;
smiData.Solid(24).ID = "Link2LShapeConnectorFront*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(25).mass = 0.033060624163836844;  % kg
smiData.Solid(25).CoM = [27.280711559945697 0 0];  % mm
smiData.Solid(25).MoI = [0.48624731983183994 8.2023615981835594 8.123639579124367];  % kg*mm^2
smiData.Solid(25).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(25).color = [0.65098039215686276 0.61960784313725492 0.58823529411764708];
smiData.Solid(25).opacity = 1;
smiData.Solid(25).ID = "Link2BackShaft*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(26).mass = 0.35568430980971671;  % kg
smiData.Solid(26).CoM = [0 10.000000000000002 9.6019119317455743];  % mm
smiData.Solid(26).MoI = [251.31866567980518 744.9439027047523 517.33752434559494];  % kg*mm^2
smiData.Solid(26).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(26).color = [1 1 1];
smiData.Solid(26).opacity = 1;
smiData.Solid(26).ID = "Link2LShapeConnectorUpper*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(27).mass = 0.077273943105096693;  % kg
smiData.Solid(27).CoM = [63.166390381816193 0 0];  % mm
smiData.Solid(27).MoI = [1.0367053513164748 101.9880926212512 101.909370602192];  % kg*mm^2
smiData.Solid(27).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(27).color = [0.65098039215686276 0.61960784313725492 0.58823529411764708];
smiData.Solid(27).opacity = 1;
smiData.Solid(27).ID = "Link2FrontShaft*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(28).mass = 0.051672476143273416;  % kg
smiData.Solid(28).CoM = [0 0 5.9999999999999982];  % mm
smiData.Solid(28).MoI = [5.8071738625884066 5.8071738625884057 10.296615608751706];  % kg*mm^2
smiData.Solid(28).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(28).color = [1 0.94901960784313721 0.89803921568627454];
smiData.Solid(28).opacity = 1;
smiData.Solid(28).ID = "Pulley40mm*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(29).mass = 0.2806599612428472;  % kg
smiData.Solid(29).CoM = [0 10.000000000000002 0];  % mm
smiData.Solid(29).MoI = [120.93104685521912 584.79626515729774 482.57588238493508];  % kg*mm^2
smiData.Solid(29).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(29).color = [1 1 1];
smiData.Solid(29).opacity = 1;
smiData.Solid(29).ID = "Link2LShapeConnectorLower*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(30).mass = 0.49924226463437027;  % kg
smiData.Solid(30).CoM = [41.870367613774697 0 114.99999999999996];  % mm
smiData.Solid(30).MoI = [4449.3830563174943 5010.0733906752475 647.43230130341556];  % kg*mm^2
smiData.Solid(30).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(30).color = [1 1 1];
smiData.Solid(30).opacity = 1;
smiData.Solid(30).ID = "Link3Body*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(31).mass = 0.033060624163836844;  % kg
smiData.Solid(31).CoM = [27.280711559945697 0 0];  % mm
smiData.Solid(31).MoI = [0.48624731983183994 8.2023615981835576 8.1236395791243652];  % kg*mm^2
smiData.Solid(31).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(31).color = [0.65098039215686276 0.61960784313725492 0.58823529411764708];
smiData.Solid(31).opacity = 1;
smiData.Solid(31).ID = "Link3UpperShaft*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(32).mass = 0.066382137343564573;  % kg
smiData.Solid(32).CoM = [54.427560764595519 0 0];  % mm
smiData.Solid(32).MoI = [0.89110111256236946 65.543489209640398 65.444765765715729];  % kg*mm^2
smiData.Solid(32).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(32).color = [0.65098039215686276 0.61960784313725492 0.58823529411764708];
smiData.Solid(32).opacity = 1;
smiData.Solid(32).ID = "Link3LowerShaft*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(33).mass = 0.050643071464214935;  % kg
smiData.Solid(33).CoM = [0 5.0000000000000009 0];  % mm
smiData.Solid(33).MoI = [9.8941363789336396 18.950175249139914 9.9000900612765257];  % kg*mm^2
smiData.Solid(33).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(33).color = [1 1 1];
smiData.Solid(33).opacity = 1;
smiData.Solid(33).ID = "MotorBackCap*:*Default";

%============= General Bodies =============%
%Inertia Type - Custom
%Visual Properties - Simple
smiData.BaseFixed.mass = 20.25213163;  % kg
smiData.BaseFixed.CoM = [0.00000000 -17.41542879 -208.60288452];  % mm
smiData.BaseFixed.MoI = [1817843.11963982 280350.76294982 1754357.70225477];  % kg*mm^2
smiData.BaseFixed.PoI = [34833.19789588 0.00006372 -0.00009621];  % kg*mm^2
smiData.BaseFixed.color = [1 1 1];
smiData.BaseFixed.opacity = 1;
smiData.BaseFixed.ID = "BaseFixed*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Link1.mass = 5.53045492;  % kg
smiData.Link1.CoM = [0.00000000 30.64789702 -15.39057219];  % mm
smiData.Link1.MoI = [261334.91722148 161286.43522733 108916.95428978];  % kg*mm^2
smiData.Link1.PoI = [14340.93898227 0.00000000 0.00000000];  % kg*mm^2
smiData.Link1.color = [1 1 1];
smiData.Link1.opacity = 1;
smiData.Link1.ID = "Link1*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Link2.mass = 2.73021467;  % kg
smiData.Link2.CoM = [1.21952312 -3.72969418 -8.81945874];  % mm
smiData.Link2.MoI = [71265.03878563 42086.25108657 30944.53776829];  % kg*mm^2
smiData.Link2.PoI = [89.80736433 -29.40776108 448.64043123];  % kg*mm^2
smiData.Link2.color = [1 1 1];
smiData.Link2.opacity = 1;
smiData.Link2.ID = "Link2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Link3.mass = 1.33017528;  % kg
smiData.Link3.CoM = [15.71481403 0.00000000 -98.11678496];  % mm
smiData.Link3.MoI = [15332.67197059 16439.93230670 1821.83303400];  % kg*mm^2
smiData.Link3.PoI = [0.00000000 -2050.98000988 0.00000000];  % kg*mm^2
smiData.Link3.color = [1 1 1];
smiData.Link3.opacity = 1;
smiData.Link3.ID = "Link3*:*Default";

%============= Identified Parameters =============%
smiData.IdentifiedParams.symbol = sym('varphi', [12, 1], 'real');
smiData.IdentifiedParams.value  = [-0.001435752848659
                                    0.056636311251630
                                    0.000000011362810
                                   -0.000922129124483
                                    0.158564623362779
                                   -0.000000042619696
                                    0.002150326844540
                                    0.060518417209381
                                    0.204992858597949
                                   -1.898330389981736
                                    1.180030612164730
                                    0.032651857667470];

%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(1).ID = "[Link1-2:-:Link2-2]";

smiData.RevoluteJoint(2).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(2).ID = "[Link1-2:-:BaseFixed-2]";

smiData.RevoluteJoint(3).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(3).ID = "[Link3-3:-:Link2-2]";

