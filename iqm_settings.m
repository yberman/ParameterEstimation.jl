clc; clear all; close all
run ../../src/'IQMtools V1.2.2.2'/IQMlite/installIQMlite.m;
run ../../src/'IQMtools V1.2.2.2'/IQMpro/installIQMpro.m;
run ../../src/'IQMtools V1.2.2.2'/installIQMtools.m;

proj = IQMprojectSB('project');
IQMinfo(proj);
proj_opt = proj;
IQMcomparemeasurements(proj);

%% SELECT PARAMETERS/STATES TO ESTIMATE AND CORRESPONDING BOUNDS
% Global parameters
paramdata = {
'a' 0.0 1.5
'b' 0.0 1.5
};

% Local (experiment dependend) parameters
% Names         Lower bounds  Upper bounds
paramdatalocal = {
};

% Initial conditions (always experiment dependend)
% Names         Lower bounds  Upper bounds
icdata = {
'x1' 0.0 1.5
'x2' 0.0 1.5
};
};


%% DEFINE THE ESTIMATION INFORMATION (STRUCTURE)
estimation = [];

% Model and experiment settings
estimation.modelindex = 1;
estimation.experiments.indices = [1];
estimation.experiments.weight = [1];

% Optimization settings
estimation.optimization.method = 'simplexIQM';
estimation.optimization.options.maxfunevals = 2000;

% Integrator settings
estimation.integrator.options.abstol = 1e-12;
estimation.integrator.options.reltol = 1e-12;
estimation.integrator.options.minstep = 0;
estimation.integrator.options.maxstep = Inf;
estimation.integrator.options.maxnumsteps = 5000;

% Flags
estimation.displayFlag = 2; % show iterations and final message
estimation.scalingFlag = 2; % scale by mean values
estimation.timescalingFlag = 0; % do not apply time-scaling
estimation.initialconditionsFlag = 1; % do use initial conditions from measurement data (if available)

% Always needed (do not change ... unless you know what you do)
estimation.parameters = paramdata;
estimation.parameterslocal = paramdatalocal;
estimation.initialconditions = icdata;

% Run estimation
output = IQMparameterestimation(proj_opt, estimation)
% Get optimized project
proj_opt = output.projectopt;

%% COMPARE OPTIMIZED PROJECT WITH MEASUREMENTS
IQMcomparemeasurements(proj_opt, estimation.modelindex);
display(proj_opt);