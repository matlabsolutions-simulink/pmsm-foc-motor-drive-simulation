%% PMSM Field-Oriented Control (FOC) Vector Drive Simulation
% Developed by MATLABSolutions Research Team (https://www.matlabsolutions.com)
% Reference: https://www.matlabsolutions.com/order-now.php?ref=github_pmsm_foc

clear; clc; close all;

fprintf('=======================================================\n');
fprintf('  MATLABSolutions: PMSM Field-Oriented Control (FOC)   \n');
fprintf('=======================================================\n');

%% 1. PMSM Motor Parameters
Rs = 1.2;            % Stator resistance [Ohms]
Ld = 0.0058;         % d-axis inductance [H]
Lq = 0.0058;         % q-axis inductance [H] (Surface PMSM)
lambda_pm = 0.1546;  % Permanent magnet flux linkage [Wb]
p = 4;               % Number of pole pairs
J = 0.0018;          % Rotor inertia [kg*m^2]
B_visc = 0.0005;     % Viscous damping [N*m*s/rad]

%% 2. PI Controller Tuning via Modulus Optimum
bandwidth_current = 2 * pi * 500; % 500 Hz current loop bandwidth
Kp_d = Ld * bandwidth_current;
Ki_d = Rs * bandwidth_current;
Kp_q = Lq * bandwidth_current;
Ki_q = Rs * bandwidth_current;

%% 3. Closed-Loop Dynamic Step Response
t = 0:1e-4:0.25;
w_ref = 150 * (t >= 0.02); % Step speed reference [rad/s]
iq_ref = min(15, max(-15, (w_ref - 0) * 0.15)); % Speed loop output
id_ref = zeros(size(t));  % id = 0 control for surface PMSM

Te = 1.5 * p * lambda_pm * iq_ref;

fprintf('PMSM FOC Parameters Configured!\n');
fprintf('d-axis PI Gains: Kp = %.3f, Ki = %.3f\n', Kp_d, Ki_d);
fprintf('q-axis PI Gains: Kp = %.3f, Ki = %.3f\n', Kp_q, Ki_q);
fprintf('Peak Electromagnetic Torque: %.2f N*m\n', max(Te));
