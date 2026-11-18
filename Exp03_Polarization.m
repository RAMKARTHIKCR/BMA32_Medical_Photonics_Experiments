
% EXPERIMENT 03 - MALUS'S LAW

clc;
clear;
close all;

% Incident intensity
I0 = 1;

% Analyzer angle in degrees
theta = 0:1:360;

% Malus's Law
I = I0*cosd(theta).^2;

% Plot the graph
plot(theta, I, 'LineWidth', 1.2);

xlabel('Analyzer angle (deg)');
ylabel('Transmitted Intensity');

title("Malus's Law");
grid on;
