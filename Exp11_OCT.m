
% EXP11 - OCT A-scan by FFT

clc;
clear;
close all;

% Define wavenumber grid
k = linspace(0, 2*pi*1e6, 2048);

% Define reflector depths
depths = [50e-6 120e-6];

% Generate spectral interferogram
S = zeros(size(k));

for d = depths
    S = S + cos(2*k*d);
end

% Apply Hann window using Base MATLAB
N = numel(S);
w = 0.5*(1-cos(2*pi*(0:N-1)/(N-1)));

S = S.*w;

% Perform Fourier Transform
Ascan = abs(fft(S));
Ascan = Ascan(1:end/2);

% Plot OCT A-scan
figure;
plot(Ascan, 'LineWidth', 1.2);

xlabel('Depth index');
ylabel('Reflectivity');

title('OCT A-scan Reconstruction');
grid on;
