
% EXP09 - Stokes shift

clc;
clear;
close all;

lam = 400:1:700;

ex = exp(-((lam-480)/20).^2);
em = exp(-((lam-520)/25).^2);

[~,ie] = max(ex);
[~,im] = max(em);

stokes = lam(im) - lam(ie);

plot(lam,ex,'b',lam,em,'r','LineWidth',1.2);

legend('Excitation','Emission');

xlabel('Wavelength (nm)');
ylabel('Normalised Intensity');

title('Fluorescence Spectra');
grid on;

fprintf('Stokes shift = %d nm\n', stokes);
