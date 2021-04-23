% Simscape(TM) Multibody(TM) version: 7.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData

%Robot Parameters(All dimensions are in metres)
load mazemap_binary_occupancy_grid_new
wheelR = 0.017; %Wheel radius (m)
axleLength = 0.0672; %Distance between wheels (m)
Robot_X=0.096; %Start X coordinate of robot 
Robot_Y=0.096; %Start Y coordinate of robot
sensor_offset_main=0.04; %distance sensor offset from centre of wheel axle
sensor_offset_individual=0.03; %distance of individual sensor from a centre to form an arc of sensors
%Contact Force
%stiffness = 1e5;
%damping = 50;
%ticksPerRot = 627.2; % Ticks per rotation for encoders
load motorLUT %Look up table for micro motor motors
%N20-12V-600 Rpm Micro Metal Gear Motor parameters
%No Load Current = 0.06 A
%Rated Torque = 0.18 kg-cm 0.017 Nm
%Stall Current = 0.75 A
%Stall Torque =0.65 kg-cm or 0.063 Nm
%Rated RPM = 600
%Rated Voltage = 12V

R= 16; %electric resistance  (Ohms) 
L= 0.5; %electric inductance (H)
Km = 0.084; % torque constant (Nm/A)
Kb = 0.190; % emf constant (V/rad/sec)0.190
Kf = 0.000025; % motor viscous friction constant /Rotor Damping coefficient(N*m/(rads/s)) 0.000025
J= 0.0001; % moment of inertia of the rotor (kg.m^2)



%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(74).translation = [0.0 0.0 0.0];
smiData.RigidTransform(74).angle = 0.0;
smiData.RigidTransform(74).axis = [0.0 0.0 0.0];
smiData.RigidTransform(74).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [79.392645158663782 72.766519606925286 102.97080666518764];  % mm
smiData.RigidTransform(1).angle = 2.8544316462575399;  % rad
smiData.RigidTransform(1).axis = [-0.14457536286497494 0.69967777028158484 0.69967777028161371];
smiData.RigidTransform(1).ID = 'AssemblyGround[Line follower assembly-1:Llanta.step-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-13.111404539189991 0.09045414614700098 -0.048281988653003927];  % mm
smiData.RigidTransform(2).angle = 2.1509183050404674;  % rad
smiData.RigidTransform(2).axis = [-0.5950275028935551 0.59502750289355466 0.54026340020449393];
smiData.RigidTransform(2).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:n20 motor___10mm.STEP-1:n20_shaft_10mm.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-3.4114045391900047 0.090454146147007919 -5.0482819886529944];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:n20 motor___10mm.STEP-1:motor___.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-11.411404539190013 0.090454146147007919 -0.048281988652990049];  % mm
smiData.RigidTransform(4).angle = 2.0943951023932397;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918963028 -0.5773502691896425 0.57735026918960441];
smiData.RigidTransform(4).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:n20 motor___10mm.STEP-1:n20_gearbox___.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [117.67781276022299 38.672174480339024 95.93731660030501];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897665;  % rad
smiData.RigidTransform(5).axis = [-0.70710678118654002 -0.70710678118655501 -1.3435028842544261e-14];
smiData.RigidTransform(5).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:n20 motor___10mm.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [0 0 0];  % mm
smiData.RigidTransform(6).angle = 0;  % rad
smiData.RigidTransform(6).axis = [0 0 0];
smiData.RigidTransform(6).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:nano-board.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [7.8999999999999906 0 -5.6000000000000005];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(7).axis = [-0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(7).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:cap106C.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [23.850000000000009 1.7500000000000016 -7.6199999999999983];  % mm
smiData.RigidTransform(8).angle = 2.3561944901923328;  % rad
smiData.RigidTransform(8).axis = [-0 -1 -0];
smiData.RigidTransform(8).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:atmega328.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [36.750000000000007 0 -7.5999999999999988];  % mm
smiData.RigidTransform(9).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(9).axis = [-0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(9).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:smt_resistor222.STEP-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [36.749999999999979 0 -12];  % mm
smiData.RigidTransform(10).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(10).axis = [-0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(10).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:smt_resistor222.STEP-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [-1.1430000000000051 1.6000000000000041 -5.080000000000001];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:2pin_header__02.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [-1.1430000000000051 1.6000000000000041 -10.159999999999998];  % mm
smiData.RigidTransform(12).angle = 0;  % rad
smiData.RigidTransform(12).axis = [0 0 0];
smiData.RigidTransform(12).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:2pin_header__02.STEP-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 0 0];  % mm
smiData.RigidTransform(13).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(13).axis = [0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(13).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:15pin_header__.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [21.860000000000017 0 -9.0000000000000018];  % mm
smiData.RigidTransform(14).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(14).axis = [-0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(14).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:smt_resistor222.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [10.399999999999993 1.6000000000000041 -5.5500000000000007];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:led.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [10.399999999999993 1.5999999999999903 -12.499999999999996];  % mm
smiData.RigidTransform(16).angle = 0;  % rad
smiData.RigidTransform(16).axis = [0 0 0];
smiData.RigidTransform(16).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:led.STEP-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [10.399999999999993 1.6000000000000041 -9.0499999999999954];  % mm
smiData.RigidTransform(17).angle = 0;  % rad
smiData.RigidTransform(17).axis = [0 0 0];
smiData.RigidTransform(17).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:led.STEP-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [29.049999999999994 0 -7.6699999999999999];  % mm
smiData.RigidTransform(18).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(18).axis = [-0.70710678118654746 -3.5355339059327367e-16 0.70710678118654757];
smiData.RigidTransform(18).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:ftdi FT232rl.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [8.2000000000000135 0 -2.5999999999999983];  % mm
smiData.RigidTransform(19).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(19).axis = [-0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(19).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:smt_resistor222.STEP-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [37.199999999999982 0 -3.3000000000000007];  % mm
smiData.RigidTransform(20).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(20).axis = [0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(20).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:cap106C.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [21.859999999999992 0 -5.7999999999999998];  % mm
smiData.RigidTransform(21).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(21).axis = [-0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(21).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:smt_resistor222.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [0 0 6.7000000000000117];  % mm
smiData.RigidTransform(22).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(22).axis = [0 1 0];
smiData.RigidTransform(22).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:MINIUSB - MEASURED.STEP-1:MINIUSBCORE.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [0 0 0];  % mm
smiData.RigidTransform(23).angle = 0;  % rad
smiData.RigidTransform(23).axis = [0 0 0];
smiData.RigidTransform(23).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:MINIUSB - MEASURED.STEP-1:MINIUSBSHELL.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [1.6000000000000008 0 5.7000000000000108];  % mm
smiData.RigidTransform(24).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(24).axis = [0 1 0];
smiData.RigidTransform(24).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:MINIUSB - MEASURED.STEP-1:MINI USB CONTACT.STEP-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [0.7999999999999986 0 5.7000000000000108];  % mm
smiData.RigidTransform(25).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(25).axis = [0 1 0];
smiData.RigidTransform(25).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:MINIUSB - MEASURED.STEP-1:MINI USB CONTACT.STEP-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-1.6000000000000008 0 5.7000000000000108];  % mm
smiData.RigidTransform(26).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(26).axis = [0 1 0];
smiData.RigidTransform(26).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:MINIUSB - MEASURED.STEP-1:MINI USB CONTACT.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [0 0 5.7000000000000108];  % mm
smiData.RigidTransform(27).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(27).axis = [0 1 0];
smiData.RigidTransform(27).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:MINIUSB - MEASURED.STEP-1:MINI USB CONTACT.STEP-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [-0.7999999999999986 0 5.7000000000000108];  % mm
smiData.RigidTransform(28).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(28).axis = [0 1 0];
smiData.RigidTransform(28).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:MINIUSB - MEASURED.STEP-1:MINI USB CONTACT.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [38.980000000000018 1.6500000000000126 -7.6199999999999983];  % mm
smiData.RigidTransform(29).angle = 1.570796326794893;  % rad
smiData.RigidTransform(29).axis = [-2.9474444016529433e-14 -1 -3.2965925355372604e-14];
smiData.RigidTransform(29).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:MINIUSB - MEASURED.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [0 0 0];  % mm
smiData.RigidTransform(30).angle = 0;  % rad
smiData.RigidTransform(30).axis = [0 0 0];
smiData.RigidTransform(30).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:reset button.STEP-1:reset core.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [0 1.6499999999999986 0];  % mm
smiData.RigidTransform(31).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(31).axis = [-0 -1 -0];
smiData.RigidTransform(31).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:reset button.STEP-1:reset shell.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [15.249999999999986 1.5999999999999903 -8.0499999999999989];  % mm
smiData.RigidTransform(32).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(32).axis = [0 1 0];
smiData.RigidTransform(32).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:reset button.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [-1.1429999999999774 1.6000000000000041 -7.6199999999999983];  % mm
smiData.RigidTransform(33).angle = 0;  % rad
smiData.RigidTransform(33).axis = [0 0 0];
smiData.RigidTransform(33).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:2pin_header__02.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [0 0 -15.24];  % mm
smiData.RigidTransform(34).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(34).axis = [0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(34).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:15pin_header__.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [10.399999999999993 1.6000000000000041 -2.8000000000000003];  % mm
smiData.RigidTransform(35).angle = 0;  % rad
smiData.RigidTransform(35).axis = [0 0 0];
smiData.RigidTransform(35).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:led.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [18.511343802042003 1.6000000000000041 -3.5541360081770001];  % mm
smiData.RigidTransform(36).angle = 0.78539816339743629;  % rad
smiData.RigidTransform(36).axis = [0 -1 0];
smiData.RigidTransform(36).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:16mhz crystal - measured.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [11.429999999999996 0 -4.2000000000000002];  % mm
smiData.RigidTransform(37).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(37).axis = [0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(37).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:NANO DIODE.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [6.1000000000000218 0 -10.160000000000002];  % mm
smiData.RigidTransform(38).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(38).axis = [-0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(38).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:nano - reg.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [15.749999999999986 0 -5.2000000000000002];  % mm
smiData.RigidTransform(39).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(39).axis = [0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(39).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:102 RESISTOR PACK.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [15.750000000000014 0 -10.849999999999998];  % mm
smiData.RigidTransform(40).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(40).axis = [0.70710678118654746 0 0.70710678118654757];
smiData.RigidTransform(40).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1:189 RESISTOR PACK.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [67.423266906370984 37.580769941146009 99.135598588958999];  % mm
smiData.RigidTransform(41).angle = 2.0943951023932175;  % rad
smiData.RigidTransform(41).axis = [0.57735026918963317 0.57735026918961119 0.57735026918963295];
smiData.RigidTransform(41).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:arduino nano.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [87.273254437541979 56.260769941149007 90.985598588958979];  % mm
smiData.RigidTransform(42).angle = 1.5707963267948588;  % rad
smiData.RigidTransform(42).axis = [-1 -1.0500000000000001e-14 1.0499999999999998e-14];
smiData.RigidTransform(42).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:New Bed.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [117.76826690636999 33.760769941149015 90.985598588958993];  % mm
smiData.RigidTransform(43).angle = 2.094395102393205;  % rad
smiData.RigidTransform(43).axis = [0.57735026918964127 -0.57735026918960708 -0.57735026918962906];
smiData.RigidTransform(43).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:micro-metal-gearmotor-bracket_PAF_M2.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(44).translation = [63.543266906369993 25.860769941148 100.985598588958];  % mm
smiData.RigidTransform(44).angle = 3.1415926535897785;  % rad
smiData.RigidTransform(44).axis = [-7.4246212024586074e-15 0.7071067811865609 -0.70710678118653414];
smiData.RigidTransform(44).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:HC-SR04-UltrasonicSensor v7.step.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(45).translation = [108.60980311173499 33.738168313655002 84.485598588959022];  % mm
smiData.RigidTransform(45).angle = 1.5794400982812804;  % rad
smiData.RigidTransform(45).axis = [0.99139337179047793 0.092572086424328848 0.092572086424331332];
smiData.RigidTransform(45).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Nut.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(46).translation = [68.56826690637098 56.560769941147001 90.985598588958979];  % mm
smiData.RigidTransform(46).angle = 1.5707963267948724;  % rad
smiData.RigidTransform(46).axis = [1 3.4914813388431578e-15 1.2227344030925683e-29];
smiData.RigidTransform(46).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:MiniBreadboard.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(47).translation = [104.26826690636999 56.260769941148006 106.23559858895999];  % mm
smiData.RigidTransform(47).angle = 1.5707963267949179;  % rad
smiData.RigidTransform(47).axis = [1.8999999999999597e-14 -1.8999999999999597e-14 1];
smiData.RigidTransform(47).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:LiPo - Zippy Compact 350.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(48).translation = [37.268266906369988 56.260769941148006 85.485598588958993];  % mm
smiData.RigidTransform(48).angle = 2.0943951023932272;  % rad
smiData.RigidTransform(48).axis = [0.57735026918962651 0.57735026918961441 0.57735026918963639];
smiData.RigidTransform(48).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:lfs6.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(49).translation = [79.30281204600098 44.900769941147026 100.635598588959];  % mm
smiData.RigidTransform(49).angle = 2.0943951023932219;  % rad
smiData.RigidTransform(49).axis = [0.57735026918963006 0.57735026918961274 0.57735026918963461];
smiData.RigidTransform(49).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:L293D_PowerDIP16_Package.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(50).translation = [126.60980311173498 33.738168313656033 84.485598588959007];  % mm
smiData.RigidTransform(50).angle = 1.5794400982812804;  % rad
smiData.RigidTransform(50).axis = [0.99139337179047793 0.092572086424328848 0.092572086424331332];
smiData.RigidTransform(50).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Nut.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(51).translation = [126.60980311173401 78.783371568644014 86.380872033562];  % mm
smiData.RigidTransform(51).angle = 1.5794400982812014;  % rad
smiData.RigidTransform(51).axis = [-0.99139337179048104 0.092572086424315247 -0.092572086424310765];
smiData.RigidTransform(51).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Nut.STEP-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(52).translation = [80.255366906372984 68.870569941143017 99.135598588959994];  % mm
smiData.RigidTransform(52).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(52).axis = [-0 -1 -3.7999999999999996e-14];
smiData.RigidTransform(52).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Motor Driver.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(53).translation = [-11.411404539190013 0.09045414614700098 -0.048281988653003927];  % mm
smiData.RigidTransform(53).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(53).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(53).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:n20 motor___10mm-1.STEP-1:n20_gearbox___.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(54).translation = [-13.111404539190019 0.09045414614700098 -0.048281988653003927];  % mm
smiData.RigidTransform(54).angle = 2.1509183050404674;  % rad
smiData.RigidTransform(54).axis = [-0.5950275028935551 0.59502750289355466 0.54026340020449393];
smiData.RigidTransform(54).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:n20 motor___10mm-1.STEP-1:n20_shaft_10mm.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(55).translation = [-3.4114045391900047 0.090454146147007919 -5.0482819886530086];  % mm
smiData.RigidTransform(55).angle = 0;  % rad
smiData.RigidTransform(55).axis = [0 0 0];
smiData.RigidTransform(55).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:n20 motor___10mm-1.STEP-1:motor___.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(56).translation = [117.67781276022299 73.84936540195902 96.033880577613019];  % mm
smiData.RigidTransform(56).angle = 1.5707963267948757;  % rad
smiData.RigidTransform(56).axis = [1.9000000000000001e-14 1.9000000000000001e-14 -1];
smiData.RigidTransform(56).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:n20 motor___10mm-1.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(57).translation = [41.768266906370989 11.760769941147997 90.985598588957984];  % mm
smiData.RigidTransform(57).angle = 1.5707963267948724;  % rad
smiData.RigidTransform(57).axis = [1 3.4914813388431578e-15 1.2227344030925683e-29];
smiData.RigidTransform(57).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Screw.STEP-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(58).translation = [41.768266906370989 11.760769941147997 85.485598588957998];  % mm
smiData.RigidTransform(58).angle = 1.5707963267948588;  % rad
smiData.RigidTransform(58).axis = [-1 0 0];
smiData.RigidTransform(58).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Nut.STEP-5]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(59).translation = [108.76826690636899 78.760769941148993 92.385598588960008];  % mm
smiData.RigidTransform(59).angle = 2.7534023203298226;  % rad
smiData.RigidTransform(59).axis = [0.19656984277040249 0.69331100413637714 0.69331100413640312];
smiData.RigidTransform(59).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Screw.STEP-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(60).translation = [108.60980311173398 78.78337156864302 86.380872033561985];  % mm
smiData.RigidTransform(60).angle = 1.5794400982812014;  % rad
smiData.RigidTransform(60).axis = [-0.99139337179048104 0.092572086424315247 -0.092572086424310765];
smiData.RigidTransform(60).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Nut.STEP-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(61).translation = [108.76826690636999 33.760769941148986 92.385598588958999];  % mm
smiData.RigidTransform(61).angle = 2.7534023203297924;  % rad
smiData.RigidTransform(61).axis = [0.19656984277041661 -0.69331100413637481 -0.69331100413640145];
smiData.RigidTransform(61).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Screw.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(62).translation = [126.76826690636899 78.760769941148993 92.385598588959994];  % mm
smiData.RigidTransform(62).angle = 2.7534023203298226;  % rad
smiData.RigidTransform(62).axis = [0.19656984277040249 0.69331100413637714 0.69331100413640312];
smiData.RigidTransform(62).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Screw.STEP-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(63).translation = [126.76826690636997 33.760769941149015 92.385598588958999];  % mm
smiData.RigidTransform(63).angle = 2.7534023203297924;  % rad
smiData.RigidTransform(63).axis = [0.19656984277041661 -0.69331100413637481 -0.69331100413640145];
smiData.RigidTransform(63).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Screw.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(64).translation = [32.868266906369989 55.985769941146984 100.98559858895899];  % mm
smiData.RigidTransform(64).angle = 2.0943951023931859;  % rad
smiData.RigidTransform(64).axis = [-0.5773502691896103 -0.57735026918964438 0.57735026918962251];
smiData.RigidTransform(64).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:HC-SR04-UltrasonicSensor v7.step.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(65).translation = [63.543266906368991 86.66076994114799 100.98559858896098];  % mm
smiData.RigidTransform(65).angle = 1.5707963267948588;  % rad
smiData.RigidTransform(65).axis = [-1 -1.0500000000000001e-14 1.0499999999999998e-14];
smiData.RigidTransform(65).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:HC-SR04-UltrasonicSensor v7.step.STEP-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(66).translation = [41.768266906368993 100.76076994114803 90.985598588961011];  % mm
smiData.RigidTransform(66).angle = 1.5707963267948724;  % rad
smiData.RigidTransform(66).axis = [1 3.4914813388431578e-15 1.2227344030925683e-29];
smiData.RigidTransform(66).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Screw.STEP-6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(67).translation = [117.76826690636899 78.760769941148993 90.985598588959988];  % mm
smiData.RigidTransform(67).angle = 2.0943951023932295;  % rad
smiData.RigidTransform(67).axis = [0.57735026918962495 0.57735026918961518 0.57735026918963717];
smiData.RigidTransform(67).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:micro-metal-gearmotor-bracket_PAF_M2.STEP-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(68).translation = [41.768266906368993 100.760769941148 83.590325144358999];  % mm
smiData.RigidTransform(68).angle = 1.5707963267948724;  % rad
smiData.RigidTransform(68).axis = [1 3.4914813388431578e-15 1.2227344030925683e-29];
smiData.RigidTransform(68).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1:Nut.STEP-6]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(69).translation = [-38.375621747706688 -15.794250334223742 6.9852080762276145];  % mm
smiData.RigidTransform(69).angle = 0;  % rad
smiData.RigidTransform(69).axis = [0 0 0];
smiData.RigidTransform(69).ID = 'AssemblyGround[Line follower assembly-1:mouse assembly.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(70).translation = [79.392645158666141 8.1665196069252985 102.97080666518312];  % mm
smiData.RigidTransform(70).angle = 2.826935418520907;  % rad
smiData.RigidTransform(70).axis = [0.1586396811924724 -0.69815236573085626 0.69815236573083339];
smiData.RigidTransform(70).ID = 'AssemblyGround[Line follower assembly-1:Llanta.step-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(71).translation = [0 4.8154687499999955 0];  % mm
smiData.RigidTransform(71).angle = 0.046580663520315604;  % rad
smiData.RigidTransform(71).axis = [-0.41131679071422678 -0.75570945445160453 0.50962900047878679];
smiData.RigidTransform(71).ID = 'AssemblyGround[Line follower assembly-1:Pololu Ball Caster.STEP-1:ball.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(72).translation = [0 0 0];  % mm
smiData.RigidTransform(72).angle = 0;  % rad
smiData.RigidTransform(72).axis = [0 0 0];
smiData.RigidTransform(72).ID = 'AssemblyGround[Line follower assembly-1:Pololu Ball Caster.STEP-1:base.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(73).translation = [18.868206972432446 40.455563970831719 92.77627541518666];  % mm
smiData.RigidTransform(73).angle = 2.096492554765454;  % rad
smiData.RigidTransform(73).axis = [-0.57595281323069059 0.57804773026614276 -0.57804773026612088];
smiData.RigidTransform(73).ID = 'AssemblyGround[Line follower assembly-1:Pololu Ball Caster.STEP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(74).translation = [-37.969719537282849 -4.7772189276671924 249.37263849114245];  % mm
smiData.RigidTransform(74).angle = 1.5707963267948724;  % rad
smiData.RigidTransform(74).axis = [-1 -3.4914813388431578e-15 -1.2227344030925683e-29];
smiData.RigidTransform(74).ID = 'RootGround[Line follower assembly-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(34).mass = 0.0;
smiData.Solid(34).CoM = [0.0 0.0 0.0];
smiData.Solid(34).MoI = [0.0 0.0 0.0];
smiData.Solid(34).PoI = [0.0 0.0 0.0];
smiData.Solid(34).color = [0.0 0.0 0.0];
smiData.Solid(34).opacity = 0.0;
smiData.Solid(34).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.0040639143551155811;  % kg
smiData.Solid(1).CoM = [0.015739164653739951 0.0090870817427994958 3.1407607148056593];  % mm
smiData.Solid(1).MoI = [0.36207507789107674 0.36200047943658958 0.69453517724006475];  % kg*mm^2
smiData.Solid(1).PoI = [-3.4405411295916541e-05 -5.9591030515264827e-05 6.4604665816880749e-05];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Llanta.step*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 7.7079296446644927e-05;  % kg
smiData.Solid(2).CoM = [0 3.8995358603767261 0.12087486959223105];  % mm
smiData.Solid(2).MoI = [0.00098006667993001109 8.0929548444435792e-05 0.00099050981494117518];  % kg*mm^2
smiData.Solid(2).PoI = [-1.0252969262493586e-05 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'n20_shaft_10mm.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.0016436504151559886;  % kg
smiData.Solid(3).CoM = [7.4821849810502208 1.4743740727479608e-06 4.999238726337242];  % mm
smiData.Solid(3).MoI = [0.028714742170377529 0.044151731228232162 0.048124918485286966];  % kg*mm^2
smiData.Solid(3).PoI = [2.1096352283158452e-09 1.1811664613055926e-05 -1.7793729053745154e-08];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'motor___.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.00036709270257432447;  % kg
smiData.Solid(4).CoM = [0.23809824888151154 -0.16892580578028782 -3.7690912719278895];  % mm
smiData.Solid(4).MoI = [0.0068401097401894848 0.0081838810966020636 0.0073874259885827447];  % kg*mm^2
smiData.Solid(4).PoI = [-2.1191214490525846e-05 2.8429057123743054e-05 -0.00062448591049593823];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'n20_gearbox___.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.0012639850139069119;  % kg
smiData.Solid(5).CoM = [17.684588138117693 0.85344430190480247 -7.6199999999999992];  % mm
smiData.Solid(5).MoI = [0.034965262236094398 0.22654844126499915 0.19236942999367562];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 -0.00031494909073627653];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'nano-board.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 9.9308508223359246e-06;  % kg
smiData.Solid(6).CoM = [2.4681812374899302e-06 0.89991670790760991 0.032039819573345493];  % mm
smiData.Solid(6).MoI = [1.2252789106885267e-05 1.2094935703000476e-05 4.8563832602373332e-06];  % kg*mm^2
smiData.Solid(6).PoI = [-2.3151467545395056e-07 0 0];  % kg*mm^2
smiData.Solid(6).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = 'cap106C.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 5.2119777093983665e-05;  % kg
smiData.Solid(7).CoM = [-0.0018902787642827885 0.46436870701205391 -0.0034872448571948932];  % mm
smiData.Solid(7).MoI = [0.0002400548775016239 0.00047065586082227685 0.00024008753086516939];  % kg*mm^2
smiData.Solid(7).PoI = [9.3730577756163367e-08 2.5155573397440128e-07 4.9679051440537724e-08];  % kg*mm^2
smiData.Solid(7).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = 'atmega328.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 2.4247495015870838e-06;  % kg
smiData.Solid(8).CoM = [0 0.29403289686249462 0];  % mm
smiData.Solid(8).MoI = [2.4797563706003701e-06 2.8410094303264013e-06 4.8707390659404439e-07];  % kg*mm^2
smiData.Solid(8).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(8).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = 'smt_resistor222.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 4.1223745408493605e-05;  % kg
smiData.Solid(9).CoM = [0 1.6776972185639247 0];  % mm
smiData.Solid(9).MoI = [0.00018722080455939086 9.6499835483565373e-05 0.00025010188699066941];  % kg*mm^2
smiData.Solid(9).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(9).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = '2pin_header__02.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.00030974680612740475;  % kg
smiData.Solid(10).CoM = [0 1.6803855414740481 17.780000000000001];  % mm
smiData.Solid(10).MoI = [0.038729647790391043 0.037548214500852217 0.0014268812280418812];  % kg*mm^2
smiData.Solid(10).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(10).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = '15pin_header__.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 2.0914720337356344e-06;  % kg
smiData.Solid(11).CoM = [6.0067903655201899e-08 0.30330896908368582 1.3189020159232727e-07];  % mm
smiData.Solid(11).MoI = [3.4089773897480304e-07 1.5450605304186109e-06 1.4106614926928808e-06];  % kg*mm^2
smiData.Solid(11).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(11).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = 'led.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 9.4093005945554171e-05;  % kg
smiData.Solid(12).CoM = [-0.00078158351610604676 0.95607114893221889 -0.0017694182378498514];  % mm
smiData.Solid(12).MoI = [0.00081887534606603092 0.0010293660224471536 0.00025901954517124558];  % kg*mm^2
smiData.Solid(12).PoI = [1.4466786081557965e-07 2.9981191113989758e-07 6.3902367967615426e-08];  % kg*mm^2
smiData.Solid(12).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = 'ftdi FT232rl.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 9.4105205927399313e-05;  % kg
smiData.Solid(13).CoM = [0 1.4242821988671641 3.2951501864671102];  % mm
smiData.Solid(13).MoI = [0.00046644663617283406 0.00077941500348984133 0.00047455493027738152];  % kg*mm^2
smiData.Solid(13).PoI = [3.332252058309212e-05 0 0];  % kg*mm^2
smiData.Solid(13).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = 'MINIUSBCORE.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(14).mass = 4.371505623772468e-05;  % kg
smiData.Solid(14).CoM = [-2.4443291263519748e-06 2.0938222062632295 2.3688594061694457];  % mm
smiData.Solid(14).MoI = [0.00045748618735531573 0.00076077888865427271 0.00047291092583199982];  % kg*mm^2
smiData.Solid(14).PoI = [-2.0815354976218833e-05 0 0];  % kg*mm^2
smiData.Solid(14).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(14).opacity = 1;
smiData.Solid(14).ID = 'MINIUSBSHELL.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(15).mass = 1.4060214045286471e-06;  % kg
smiData.Solid(15).CoM = [1.3524896607647669e-05 1.3305602219844102 1.8793434369499395];  % mm
smiData.Solid(15).MoI = [1.0699790863470816e-05 9.8549371864105648e-06 8.8461423141277115e-07];  % kg*mm^2
smiData.Solid(15).PoI = [-2.3096053226744393e-06 0 0];  % kg*mm^2
smiData.Solid(15).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(15).opacity = 1;
smiData.Solid(15).ID = 'MINI USB CONTACT.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(16).mass = 1.7112343662641647e-05;  % kg
smiData.Solid(16).CoM = [3.6311412395584995e-09 0.8184619061758861 -2.3548786135914287e-07];  % mm
smiData.Solid(16).MoI = [1.4101629076056137e-05 3.1067805847891169e-05 2.6308971248746477e-05];  % kg*mm^2
smiData.Solid(16).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(16).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(16).opacity = 1;
smiData.Solid(16).ID = 'reset core.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(17).mass = 2.8088106458253265e-06;  % kg
smiData.Solid(17).CoM = [0 -0.41235321656986657 0];  % mm
smiData.Solid(17).MoI = [4.5990853453562411e-06 7.4568309820782831e-06 3.9694075309021075e-06];  % kg*mm^2
smiData.Solid(17).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(17).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(17).opacity = 1;
smiData.Solid(17).ID = 'reset shell.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(18).mass = 3.1464539133869228e-06;  % kg
smiData.Solid(18).CoM = [-3.0586445951541414e-09 0.35317626568541993 -1.3603165789707411e-08];  % mm
smiData.Solid(18).MoI = [6.2819566121478353e-07 3.1024086926214294e-06 2.8197323672154789e-06];  % kg*mm^2
smiData.Solid(18).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(18).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(18).opacity = 1;
smiData.Solid(18).ID = '16mhz crystal - measured.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(19).mass = 7.2064994818870287e-06;  % kg
smiData.Solid(19).CoM = [0.00061775548078661906 0.62903568395377019 -8.0757359026572218e-06];  % mm
smiData.Solid(19).MoI = [2.7855306217944837e-06 8.3269558669575969e-06 7.8321368777461206e-06];  % kg*mm^2
smiData.Solid(19).PoI = [0 0 -3.1878317701133225e-09];  % kg*mm^2
smiData.Solid(19).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(19).opacity = 1;
smiData.Solid(19).ID = 'NANO DIODE.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(20).mass = 3.6758138389540532e-05;  % kg
smiData.Solid(20).CoM = [-4.1785269232693059e-05 0.72953473979015082 0.025182937221682005];  % mm
smiData.Solid(20).MoI = [6.4790065793013976e-05 0.00017491368048147307 0.00012581944072144997];  % kg*mm^2
smiData.Solid(20).PoI = [3.2985304906216587e-07 0 1.3295876186883392e-09];  % kg*mm^2
smiData.Solid(20).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(20).opacity = 1;
smiData.Solid(20).ID = 'nano - reg.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(21).mass = 2.0423957168654337e-06;  % kg
smiData.Solid(21).CoM = [5.3357754087736635e-05 0.20590101549370202 -6.3321073743122904e-07];  % mm
smiData.Solid(21).MoI = [7.3303883984980113e-07 2.5173195556376082e-06 1.8435498442470018e-06];  % kg*mm^2
smiData.Solid(21).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(21).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(21).opacity = 1;
smiData.Solid(21).ID = '102 RESISTOR PACK.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(22).mass = 2.0424880085903752e-06;  % kg
smiData.Solid(22).CoM = [6.8156192061507231e-05 0.20591224063466149 -3.7127798365360905e-06];  % mm
smiData.Solid(22).MoI = [7.3304347573155087e-07 2.5173378128006439e-06 1.8435748257135616e-06];  % kg*mm^2
smiData.Solid(22).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(22).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(22).opacity = 1;
smiData.Solid(22).ID = '189 RESISTOR PACK.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(23).mass = 0.039461050726648877;  % kg
smiData.Solid(23).CoM = [-11.612569564459292 2.2499999999999987 0];  % mm
smiData.Solid(23).MoI = [20.613886722559979 63.867652025169157 43.38694634881162];  % kg*mm^2
smiData.Solid(23).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(23).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(23).opacity = 1;
smiData.Solid(23).ID = 'New Bed.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(24).mass = 0.00074571671209483731;  % kg
smiData.Solid(24).CoM = [1.4376134182710418 6.4787845170104132 0.0013651231121136172];  % mm
smiData.Solid(24).MoI = [0.048628367335778105 0.044913973108404136 0.019726487970850849];  % kg*mm^2
smiData.Solid(24).PoI = [-5.2320801843980347e-06 5.3070714371695235e-06 -0.001084450226270714];  % kg*mm^2
smiData.Solid(24).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(24).opacity = 1;
smiData.Solid(24).ID = 'micro-metal-gearmotor-bracket_PAF_M2.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(25).mass = 0.0049179892229956439;  % kg
smiData.Solid(25).CoM = [-0.068102218484018179 0.035211098741695139 4.0162245279636402];  % mm
smiData.Solid(25).MoI = [0.1917856210614011 0.94681512677866964 0.9986415843669374];  % kg*mm^2
smiData.Solid(25).PoI = [-0.0040992955137182227 -0.0013822395317353228 -9.6758904385249128e-05];  % kg*mm^2
smiData.Solid(25).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(25).opacity = 1;
smiData.Solid(25).ID = 'HC-SR04-UltrasonicSensor v7.step.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(26).mass = 2.0604630639831973e-05;  % kg
smiData.Solid(26).CoM = [0.00084070428333550995 1.0026427478569548 0.0016106792262476841];  % mm
smiData.Solid(26).MoI = [3.8084733060184891e-05 6.2378734777046016e-05 3.8093407136048476e-05];  % kg*mm^2
smiData.Solid(26).PoI = [-2.0204791966305748e-08 8.5911946560329184e-09 1.5733479858824536e-08];  % kg*mm^2
smiData.Solid(26).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(26).opacity = 1;
smiData.Solid(26).ID = 'Nut.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(27).mass = 0.012082593933730505;  % kg
smiData.Solid(27).CoM = [2.406253715815549e-12 3.9273123346816718 -0.0021612108366001665];  % mm
smiData.Solid(27).MoI = [2.1639131715465418 3.331724719210714 1.2962520642485027];  % kg*mm^2
smiData.Solid(27).PoI = [4.3997188581734876e-05 0 0];  % kg*mm^2
smiData.Solid(27).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(27).opacity = 1;
smiData.Solid(27).ID = 'MiniBreadboard.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(28).mass = 0.021296725871724619;  % kg
smiData.Solid(28).CoM = [-0.7619615618953236 6.0008287918376588 -0.077735515930131741];  % mm
smiData.Solid(28).MoI = [1.8776137986608314 7.6995720015657403 6.3200623787788093];  % kg*mm^2
smiData.Solid(28).PoI = [-0.0002458583853006467 0.044832160471953521 -0.00050941003525023618];  % kg*mm^2
smiData.Solid(28).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(28).opacity = 1;
smiData.Solid(28).ID = 'LiPo - Zippy Compact 350.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(29).mass = 0.0018248672587712822;  % kg
smiData.Solid(29).CoM = [0 0.5 -0.4318655681618665];  % mm
smiData.Solid(29).MoI = [0.062594316083545334 1.6680646669192498 1.6057744953788331];  % kg*mm^2
smiData.Solid(29).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(29).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(29).opacity = 1;
smiData.Solid(29).ID = 'lfs6.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(30).mass = 0.00044248450465386361;  % kg
smiData.Solid(30).CoM = [0.021406946619467404 -0.084774517016353454 0];  % mm
smiData.Solid(30).MoI = [0.0025841812326399742 0.016340404541106173 0.014763923949402813];  % kg*mm^2
smiData.Solid(30).PoI = [0 0 -1.4725592245160617e-05];  % kg*mm^2
smiData.Solid(30).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(30).opacity = 1;
smiData.Solid(30).ID = 'L293D_PowerDIP16_Package.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(31).mass = 0.00078343418873375514;  % kg
smiData.Solid(31).CoM = [0.96154946599752844 0.072975946314924878 -0.00042879230610691141];  % mm
smiData.Solid(31).MoI = [0.052881347285728582 0.026093001264844717 0.02745287565367286];  % kg*mm^2
smiData.Solid(31).PoI = [6.8891505643717283e-08 3.421202917910106e-07 -0.0001108587054088956];  % kg*mm^2
smiData.Solid(31).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(31).opacity = 1;
smiData.Solid(31).ID = 'Motor Driver.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(32).mass = 4.863172313302933e-05;  % kg
smiData.Solid(32).CoM = [0.00051097869921685731 -2.6786031726431641 -0.00088723748276374871];  % mm
smiData.Solid(32).MoI = [0.00041811667661919362 5.7470567995922882e-05 0.00041809774117471116];  % kg*mm^2
smiData.Solid(32).PoI = [-1.2288688307767515e-07 1.4672584624262652e-08 -4.2646680206762041e-08];  % kg*mm^2
smiData.Solid(32).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(32).opacity = 1;
smiData.Solid(32).ID = 'Screw.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(33).mass = 0.00042116034034392076;  % kg
smiData.Solid(33).CoM = [0 0 0];  % mm
smiData.Solid(33).MoI = [0.0036426157836345701 0.0036426157836345701 0.0036426157836345701];  % kg*mm^2
smiData.Solid(33).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(33).color = [1 1 1];
smiData.Solid(33).opacity = 1;
smiData.Solid(33).ID = 'ball.STEP*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(34).mass = 0.00033467548165070119;  % kg
smiData.Solid(34).CoM = [-0.15557834643867824 1.7565862271271235 -0.00017942456077771986];  % mm
smiData.Solid(34).MoI = [0.0063215482457216693 0.010329123999554081 0.0069196290401135991];  % kg*mm^2
smiData.Solid(34).PoI = [-1.2358834195404945e-07 -4.6535083364055075e-07 0.000172268051858841];  % kg*mm^2
smiData.Solid(34).color = [0 0 0];
smiData.Solid(34).opacity = 1;
smiData.Solid(34).ID = 'base.STEP*:*Default';

