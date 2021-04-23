% Simscape(TM) Multibody(TM) version: 7.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData

%Robot Parameters (in m)
radius=0.015;
length=0.064;
%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(9).translation = [0.0 0.0 0.0];
smiData.RigidTransform(9).angle = 0.0;
smiData.RigidTransform(9).axis = [0.0 0.0 0.0];
smiData.RigidTransform(9).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [6.6916117132410911 84.977910461148056 117.98388036206623];  % mm
smiData.RigidTransform(1).angle = 1.059455084229704e-14;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = 'B[Jeep body part-2:-:wheel complete part-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [5.8262071737100367 13.764544539813523 18.70504356930596];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962573 -0.57735026918962584 0.57735026918962573];
smiData.RigidTransform(2).ID = 'F[Jeep body part-2:-:wheel complete part-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [6.691611713241147 84.977910461147104 203.98388036206626];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897829;  % rad
smiData.RigidTransform(3).axis = [-1 -0 -0];
smiData.RigidTransform(3).ID = 'B[Jeep body part-2:-:wheel complete part-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [5.826207173710138 13.764544539813553 18.705043569306174];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962573 -0.57735026918962584 0.57735026918962573];
smiData.RigidTransform(4).ID = 'F[Jeep body part-2:-:wheel complete part-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [124.73161171324115 84.97791046114817 117.98388036206629];  % mm
smiData.RigidTransform(5).angle = 1.0594550842297043e-14;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = 'B[Jeep body part-2:-:wheel complete part-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [5.8262071737100349 13.764544539813519 18.705043569306177];  % mm
smiData.RigidTransform(6).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(6).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(6).ID = 'F[Jeep body part-2:-:wheel complete part-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [124.73161171324109 84.977910461147189 203.98388036206623];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897829;  % rad
smiData.RigidTransform(7).axis = [-1 -0 -0];
smiData.RigidTransform(7).ID = 'B[Jeep body part-2:-:wheel complete part-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [5.8262071737100527 13.764544539813514 18.705043569306149];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962573 -0.57735026918962584 0.57735026918962573];
smiData.RigidTransform(8).ID = 'F[Jeep body part-2:-:wheel complete part-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-228.0933769418431 79.511335205810582 -84.874800595219838];  % mm
smiData.RigidTransform(9).angle = 1.5707963267949003;  % rad
smiData.RigidTransform(9).axis = [1 0 0];
smiData.RigidTransform(9).ID = 'RootGround[Jeep body part-2]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(2).mass = 0.0;
smiData.Solid(2).CoM = [0.0 0.0 0.0];
smiData.Solid(2).MoI = [0.0 0.0 0.0];
smiData.Solid(2).PoI = [0.0 0.0 0.0];
smiData.Solid(2).color = [0.0 0.0 0.0];
smiData.Solid(2).opacity = 0.0;
smiData.Solid(2).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.014289563528688412;  % kg
smiData.Solid(1).CoM = [2.1435581243893251 13.764546861724364 18.705039547638673];  % mm
smiData.Solid(1).MoI = [1.3560147526532491 0.96948621607226881 0.96948609758492843];  % kg*mm^2
smiData.Solid(1).PoI = [1.026130475033749e-07 3.0470481678421356e-07 -1.7592140811897729e-07];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'wheel complete part*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.24848998364380978;  % kg
smiData.Solid(2).CoM = [52.370056106902119 104.82163713414771 160.98321593138306];  % mm
smiData.Solid(2).MoI = [178.93800905743262 791.70857614259387 717.1354273260506];  % kg*mm^2
smiData.Solid(2).PoI = [0.037412361944592513 -0.031056052612829226 4.1158556754735551];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Jeep body part*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(4).Rz.Pos = 0.0;
smiData.RevoluteJoint(4).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 136.55289278841946;  % deg
smiData.RevoluteJoint(1).ID = '[Jeep body part-2:-:wheel complete part-1]';

smiData.RevoluteJoint(2).Rz.Pos = 7.9518955761244282e-13;  % deg
smiData.RevoluteJoint(2).ID = '[Jeep body part-2:-:wheel complete part-2]';

smiData.RevoluteJoint(3).Rz.Pos = -179.9999999999992;  % deg
smiData.RevoluteJoint(3).ID = '[Jeep body part-2:-:wheel complete part-3]';

smiData.RevoluteJoint(4).Rz.Pos = -29.653951248045939;  % deg
smiData.RevoluteJoint(4).ID = '[Jeep body part-2:-:wheel complete part-4]';

