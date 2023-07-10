%% Housekeeping

clear all;
close all;

%% rough numbers

% gravitational acceleration (m/s^2)
g = 9.806;

% wastewater
	% density (kg/m^3)
	rho_ww = 1.005*(10^(3));
	% volume capacity of manifold (m^3)
	V_ww = 1.041;
	% waterline displacement(m^3)
	V_d_ww = 9.834*(10^(2));

% Ratio by volume of air to water
R_air_water = 0.71;
% Ratio of total areated volume as air
R_air = R_air_water/(1 + R_air_water);
R_water  = 

% manifold piping
	% flanged
		% mass (kg)
		m_manifold_f = 5.5609*(10^(2));
		% volume (m^3)
		V_manifold_f = 3.762*(10^(-1));
		% waterline displacement(m^3)
		V_d_manifold_f = 3.565*(10^(-1));
	%	selection
	m_manifold = m_manifold_f;
	V_manifold = V_manifold_f;
	V_d_manifold = V_d_manifold_f;
	

%% loadcase

F_y_g_manifold = - g*m_manifold;

	
