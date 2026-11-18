% Exp01 - Laser irradiance and goggle optical density
P  = 5e-3;              % laser power in watts (5 mW)
r  = 0.5e-3;            % beam radius in metres (0.5 mm)
A  = pi*r^2;            % beam area
E  = P/A;               % irradiance in W/m^2
H   = E;                % exposure (W/m^2) for this demo
MPE = 25.4;             % example MPE in W/m^2 for 532 nm
OD  = log10(H/MPE);
fprintf('Irradiance   = %.2f W/m^2\n', E);
fprintf('Required OD   = %.2f\n', OD);
