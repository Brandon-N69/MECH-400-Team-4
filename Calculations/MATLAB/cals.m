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
% Ratio of total areated volume
	% as air
	R_air = R_air_water/(1 + R_air_water);
	% as water
	R_water  = 1 - R_air;

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

%12 inch T
pipe_12_T.m = 1.950702*(10^(1));		%Mass (kg)
pipe_12_T.V = 2.049057134*(10^(-2));	%Pipe Volume (m3)
pipe_12_T.Vi = 0;						%internal volume
pipe_12_T.c = [0, 0.11424778, 0];		%centroid distance from origin (m)
pipe_12_T.d = [0.365125, 0.527050, 0];	%distance from origin to next

%injector assembly
pipe_injector.m = 1.823*(10^(1));
pipe_injector.V = 1.574742806*(10^(-2));
pipe_injector.Vi = 0;
pipe_injector.c = [0,0,0.233];
pipe_injector.d = [0.2921,0,0];

%flanged connection
connect_fx.m = 3.251*(10^(1));
connect_fx.V = 1.512*(10^(-2));
connect_fx.Vi = 0;
connect_fx.c = [0,0,0];
connect_fx.d = [0.27432,0,0];

% horizontal pipe
pipe_x.m = 1.006*(10^(1));
pipe_x.V = 1.057*(10^(-2));
pipe_x.Vi = 0;
pipe_x.c = connect_fx.c;
pipe_x.d = connect_fx.d;


