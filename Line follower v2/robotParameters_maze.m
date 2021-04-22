%Robot Parameters
% Copyright 2017 The MathWorks, Inc.
load maze_map
wheelR = 0.017; %Wheel radius (m)
axleLength = 0.0672; %Distance between wheels (m)
sensor_dist = 0.075; %distance from wheel axle to line sensor (x)
sensor_spacing = 0.018; %distance between two sensor (m)
ticksPerRot = 627.2; % Ticks per rotation for encoders
load motorLUT %Look up table for micro motor motors
%Ts = 0.01; %Sample time


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

% A = [-Kf/J Km/J; -Km/L -R/L];
% B = [0 ; 1/L];
% C = [1 0 ];
% D = [0];
%actual
% A= [-Kf/J Km/J; -Kb/L -R/L]