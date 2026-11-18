
% EXP12 - Fluorescence image segmentation
% Simulated fluorescence microscopy image

clc;
clear;
close all;

% Generate simulated fluorescent cells
N = 256;
[x,y] = meshgrid(1:N,1:N);

I = zeros(N,N);

centres = [50 50; 120 50; 190 50;
           50 130; 120 130; 190 130;
           85 210; 165 210];

for i = 1:size(centres,1)
    cx = centres(i,1);
    cy = centres(i,2);

    I = I + exp(-((x-cx).^2+(y-cy).^2)/(2*8^2));
end

I = mat2gray(I);
I = im2uint8(I);

% Adaptive thresholding
bw = imbinarize(I,'adaptive','Sensitivity',0.5);

% Remove small objects
bw = bwareaopen(bw,30);

% Measure fluorescent regions
stats = regionprops(bw,I,'Area','MeanIntensity');

% Display cell count
fprintf('Number of cells = %d\n',numel(stats));

% Display segmented image
figure;
imshow(bw);
title('Segmented Fluorescent Cells');
