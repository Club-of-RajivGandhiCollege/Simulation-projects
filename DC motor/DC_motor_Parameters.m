%DC Motor parameters
%Model types:
%1.Position Control (deg)
%2.Speed Control rad/sec or rpm
%3.PWM Control(0-255)
%example: Maxon EC45 50W  Order Number 251601(circuit parameters)
Motor.K = 33.5e-3;                  % Torque Constant N*(m/A)
Motor.R = 0.978;                    % Armature Resistance(Ohm)
Motor.L = 0.573e-3;                 % Armature Inductance (H)
Motor.gr = 156;                     % Gear ratio (NF/NB)
Motor.range = [-65 90]*pi/180;      % Range of motion, rad
Motor.max_spd = [-90 90]*pi/180;    % Max speed, rad/s
Motor.no_load_i = 201e-3;           % No load Current(A)
Motor.friction = 40;                % N*m/(rad/s) Damping Coefficient
Motor.Inertia =0;                   %(g*cm^2)
Motor.V = 12;                       %Input Voltage to H-Bridge
Motor.Dead_Band = 0.1;              % deg

% By Stall torque and no load speed
Motor.Stalltorque=0;                % (N*m)
Motor.nlspeed=0;                    %No load speed (rpm)
Motor.ratedV=0;                     %Rated DC supply Voltage