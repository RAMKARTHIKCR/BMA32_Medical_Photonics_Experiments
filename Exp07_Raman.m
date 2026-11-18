
% EXP07 - Raman peak detection
% Simulated Raman spectrum

clc;
clear;
close all;

% Generate simulated Raman data
wn = 400:2:1800;

I = 0.0002*(wn-400) ...
    + 1.5*exp(-((wn-800)/35).^2) ...
    + 2.0*exp(-((wn-1200)/45).^2) ...
    + 1.2*exp(-((wn-1600)/30).^2);

% Add baseline and noise
I = I + 0.15 + 0.03*randn(size(wn));

% Baseline correction
base = movmedian(I,101);
Ic = I-base;

% Detect peaks
[pks,loc] = findpeaks(Ic, ...
    'MinPeakHeight',0.1*max(Ic), ...
    'MinPeakDistance',20);

% Plot Raman spectrum
figure;
plot(wn,Ic,'b');
hold on;
plot(wn(loc),pks,'rv');

xlabel('Raman shift (cm^{-1})');
ylabel('Intensity');
title('Raman Spectrum');
grid on;
