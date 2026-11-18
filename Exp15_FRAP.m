
% EXP15 - FRAP recovery fit

clc;
clear;
close all;

t = (0:0.5:30)';

F = 0.8*(1-exp(-t/6)) + 0.02*randn(size(t));

ft = fittype('Finf*(1-exp(-t/tau))', ...
    'independent','t');

f = fit(t,F,ft,'StartPoint',[0.8 6]);

t_half = f.tau*log(2);
w = 2;                    % bleach radius (um)

D = 0.224*w^2/t_half;

plot(f,t,F);

xlabel('Time (s)');
ylabel('Fluorescence');
title('FRAP Recovery');

fprintf('tau = %.2f s, D = %.3f um^2/s\n', ...
    f.tau,D);
