addpath(genpath('../src'))
addpath(genpath("./"))
%======================
% PATHS RELATED DATA
%======================
inputs.pathd.results_folder='HIVModel'; % Folder to keep results
inputs.pathd.short_name='HIV';                 % To identify figures and reports
%======================
% MODEL RELATED DATA
%======================
clear
inputs.model.input_model_type='charmodelC';           % Model type- C
inputs.model.n_st=5;                                  % Number of states
inputs.model.n_par=10;                                 % Number of model parameters
%inputs.model.n_stimulus=0;                            % Number of inputs, stimuli or control variables
inputs.model.st_names=char('x','yy','vv','w','z');           % Names of the states
inputs.model.par_names=char('lm', 'd', 'beta', 'a', 'k', 'uu', 'c', 'q', 'b', 'h');             % Names of the parameters
%inputs.model.stimulus_names=char('light');  % Names of the stimuli
inputs.model.eqns=char('dx = lm - d * x - beta * x * vv;','dyy = beta * x * vv - a * yy;','dvv = k * yy - uu * vv;','dw = c * x * yy * w - c * q * yy * w - b * w;','dz = c * q * yy * w - h * z;');                                 % Equations describing system dynamics.
                            %Time derivatives are regarded 'd'st_name''
inputs.model.par = [0.1 0.11 0.1 0.1 0.09 0.1 0.1 0.1 0.1 0.1];         % Nominal value for the parameters
% inputs.model.AMIGOsensrhs = 1;                       % Generate the sensitivity equations for exact
%                                                      % Jacobian computation
%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================
% EXPERIMENT DESIGN
inputs.exps.n_exp=1;                          % Number of experiments
% EXPERIMENT 1
inputs.exps.exp_y0{1}=[1.0 1.0 1.0 1.0 1.0];        % Initial conditions
inputs.exps.t_f{1}=20;                       % Experiments duration
inputs.exps.n_obs{1}=4;                       % Number of observables
inputs.exps.obs_names{1}=char('Y1', 'Y2', 'Y3', 'Y4'); % Names of the observables
inputs.exps.obs{1}=char('Y1=x', 'Y2=z', 'Y3=w', 'Y4=yy+vv');
inputs.exps.t_con{1}=[0 20];                 % Input swithching times including:
inputs.exps.n_s{1}=20;
inputs.exps.data_type='real';

% JRB use data generated with AMIGO2 SObs
inputs.exps.exp_data{1}=[
   1.000000000000000   1.000000000000000   1.000000000000000   2.000000000000000
   0.905083030185604   0.909990023895770   0.984278781619991   1.994829440371857
   0.828232448501669   0.828677953576620   0.959420438361711   1.980660214217633
   0.766104889438569   0.755054425933926   0.927378297635810   1.959246507848325
   0.716005769923866   0.688257669886678   0.890032421657721   1.932057724700605
   0.675750750772141   0.627551077189623   0.849060170821204   1.900332683769387
   0.643563008092375   0.572302497793323   0.805881685638961   1.865117386178484
   0.617994411888284   0.521966109250957   0.761652452940065   1.827293489389231
   0.597863462700850   0.476067134642378   0.717282204868373   1.787601266925823
   0.582205550951334   0.434189309254983   0.673466096511372   1.746659009836651
   0.570232659931860   0.395964794323664   0.630719466124572   1.704979866811221
   0.561300536466504   0.361066156720651   0.589411314998234   1.662986635740919
   0.554881891059439   0.329200029682503   0.549794155516221   1.621024789595055
   0.550544524657207   0.300102105931345   0.512029394250303   1.579373919461505
   0.547933502413248   0.273533167374640   0.476208256848545   1.538257739412895
   0.546756655192518   0.249275911077092   0.442368671903375   1.497852785779819
   0.546772812999128   0.227132382196993   0.410508688081011   1.458295939876216
   0.547782274541814   0.206921868070000   0.380597017801419   1.419690900460797
   0.549619100687710   0.188479142985158   0.352581252379565   1.382113727484648
   0.552144890239581   0.171652981016834   0.326394218528968   1.345617571574724

];

% data used by Ilia (github repo)
% inputs.exps.exp_data{1}=[
% 1.0 1.0 1.0 2.0
% 0.905083030182227 0.9099900238949247 0.9842787816205876 1.9948294403737177
% 0.828232448497858 0.8286779535761994 0.9594204383569604 1.9806602142202507
% 0.7661048894208032 0.7550544259313611 0.9273782976182252 1.9592465078564647
% 0.7160057699099953 0.6882576698848156 0.8900324216399729 1.9320577247073667
% 0.6757507507562769 0.6275510771869448 0.8490601707999932 1.900332683776821
% 0.6435630080749706 0.5723024977893446 0.8058816856175042 1.8651173861863783
% 0.6179944118822168 0.5219661092491371 0.7616524529098004 1.8272934893923989
% 0.5978634626816113 0.47606713463671374 0.7172822048494094 1.7876012669342232
% 0.582205550930785 0.43418930924867544 0.6734660964928534 1.746659009845441
% 0.5702326599143562 0.39596479431747905 0.6307194661060216 1.7049798668185796
% 0.5613005364444655 0.3610661567129184 0.5894113149892181 1.6629866357509355
% 0.554881891037426 0.3292000296745652 0.5497941555155714 1.6210247896060381
% 0.5505445246504689 0.30010210592671505 0.5120293942373574 1.579373919463844
% 0.5479335023878394 0.2735331673653315 0.4762082568564513 1.5382577394275196
% 0.5467566551862834 0.24927591107202846 0.44236867189413237 1.4978527857821309
% 0.5467728129902902 0.22713238219256837 0.4105086880828784 1.4582959398812334
% 0.5477822745266763 0.20692186806395252 0.38059701781099564 1.419690900471171
% 0.549619100667729 0.18847914297744256 0.3525812523941351 1.3821137274996829
% 0.5521448902304112 0.17165298101335727 0.32639421853798994 1.3456175715814291
% ];

inputs.PEsol.id_global_theta='all';
inputs.PEsol.global_theta_max=1.*ones(1,10);
inputs.PEsol.global_theta_min=0.0001.*ones(1,10);
inputs.PEsol.id_global_theta_y0='all';               % [] 'all'|User selected| 'none' (default)
inputs.PEsol.global_theta_y0_max=2*ones(1,5);                % Maximum allowed values for the initial conditions
inputs.PEsol.global_theta_y0_min=0.001*ones(1,5);                % Minimum allowed values for the initial conditions


% JRB use tight integration tolerances
 inputs.ivpsol.rtol=1.0e-12;                            % [] IVP solver integration tolerances
 inputs.ivpsol.atol=1.0e-12; 


%=============================================================
% COST FUNCTION RELATED DATA
% SOLVING THE PROBLEM WITH WEIGHTED LEAST SQUARES FUNCTION
%=============================================================
inputs.PEsol.PEcost_type='lsq';          % 'lsq' (weighted least squares default)
inputs.PEsol.lsq_type='Q_I';             % Weights:
                                         % Q_I: identity matrix; Q_expmax: maximum experimental data
                                         % Q_expmean: mean experimental data;
                                         % Q_mat: user selected weighting matrix
% OPTIMIZATION
%inputs.nlpsol.nlpsolver='local_lsqnonlin';  % In this case the problem will be solved with
                                         % a local non linear least squares
                                         % method.AMIGO_Prep(inputs);
% %
 inputs.nlpsol.nlpsolver='eSS';                      % Solver used for optimization
%  inputs.nlpsol.eSS.log_var = 1:3;                    % Index of parameters to be considered in log scale
 inputs.nlpsol.eSS.maxeval = 20000;                  % Maximum number of cost function evaluations
 inputs.nlpsol.eSS.maxtime = 600;                    % Maximum time spent for optimization
 inputs.nlpsol.eSS.local.solver = 'nl2sol';
 inputs.nlpsol.eSS.local.finish = 'nl2sol';
%  inputs.nlpsol.eSS.local.nl2sol.maxiter = 150;       % Parameters for local solver
%  inputs.nlpsol.eSS.local.nl2sol.maxfeval = 200;
  inputs.nlpsol.eSS.local.nl2sol.display = 1;
%  inputs.nlpsol.eSS.local.nl2sol.objrtol = 1e-6;
%  inputs.nlpsol.eSS.local.nl2sol.tolrfun = 1e-5;
% %
% inputs.exps.u_interp{1}='sustained';          % Stimuli definition for experiment 1
                                              % Initial and final time
%inputs.exps.u{1}=1;                           % Values of the inputs for exp 1
AMIGO_Prep(inputs);
AMIGO_PE(inputs);

%% JRB print estimated params and ic and compute errors wrt true values
%% (the latter taken from Julia files)
%load('D:\AMIGO2\AMIGO2_R2019b\Results\Problem\PE_problem_eSS_run1\strreport_problem_run1.mat')
%p_estimated=results.fit.global_theta_estimated;
%ic_estimated=results.fit.global_theta_y0_estimated;
%
%p_true= [0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1];
%ic_true= [1.0 1.0 1.0 1.0 1.0];
%
%p_rel_error= abs(p_estimated-p_true)./p_true
%ic_rel_error= abs(ic_estimated-ic_true)./ic_true
%
%max_p_rel_error=max(p_rel_error)
%max_ic_rel_error=max(ic_rel_error)
%
%%save HIV_JRB_24April
