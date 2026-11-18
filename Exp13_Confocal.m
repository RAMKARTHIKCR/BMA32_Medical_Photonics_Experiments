
% EXP13 - Confocal z-stack projection

clc;
clear;
close all;

lambda = 500e-9;
NA = 1.2;
n = 1.33;

% Calculate resolutions
rxy = 0.4*lambda/NA;
rz = 1.4*lambda*n/NA^2;

% Generate simulated optical sections
V = rand(128,128,20);

% Maximum intensity projection
mip = max(V,[],3);

% Display confocal image
figure;
imshow(mip,[]);
title('Confocal MIP');

% Display resolution values
fprintf('Lateral res = %.0f nm, Axial res = %.0f nm\n', ...
    rxy*1e9, rz*1e9);