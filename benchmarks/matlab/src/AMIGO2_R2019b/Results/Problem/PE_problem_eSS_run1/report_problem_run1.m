   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2019a [March 2019]    *
   *********************************** 

Date: 30-May-2023
Problem folder:	 Results/Problem
Results folder in problem folder:	 Results/Problem/PE_problem_eSS_run1 


-------------------------------
Optimisation related active settings
-------------------------------


------> Global Optimizer: Enhanced SCATTER SEARCH for parameter estimation

		>Summary of selected eSS options: 
ess_options.
	dim_refset:	'auto'
	inter_save:	0
	iterprint:	1
	local:	(1x1 struct)
	log_var:	[]
	maxeval:	20000
	maxtime:	600
	ndiverse:	'auto'
nl2sol_settings.
	display:	1
	grad:	[]
	iterfun:	[]
	maxfeval:	300
	maxiter:	300
	objrtol:	1e-06
	tolafun:	1e-06
	tolrfun:	1e-06

		>Bounds on the unknowns:

		v_guess(1)=0.500000;  v_min(1)=0.000000; v_max(1)=1.000000;
		v_guess(2)=0.500000;  v_min(2)=0.000000; v_max(2)=1.000000;
		v_guess(3)=0.500000;  v_min(3)=0.000000; v_max(3)=1.000000;
		v_guess(4)=0.500000;  v_min(4)=0.000000; v_max(4)=1.000000;
		v_guess(5)=0.500000;  v_min(5)=0.000000; v_max(5)=1.000000;
		v_guess(6)=0.500000;  v_min(6)=0.000000; v_max(6)=1.000000;
		v_guess(7)=0.500000;  v_min(7)=0.000000; v_max(7)=1.000000;
		v_guess(8)=0.500000;  v_min(8)=0.000000; v_max(8)=1.000000;
		v_guess(9)=0.500000;  v_min(9)=0.000000; v_max(9)=1.000000;
		v_guess(10)=0.500000;  v_min(10)=0.000000; v_max(10)=1.000000;
		v_guess(11)=0.500000;  v_min(11)=0.000000; v_max(11)=1.000000;
		v_guess(12)=0.500000;  v_min(12)=0.000000; v_max(12)=1.000000;
		v_guess(13)=0.500000;  v_min(13)=0.000000; v_max(13)=1.000000;
		v_guess(14)=0.500000;  v_min(14)=0.000000; v_max(14)=1.000000;
		v_guess(15)=0.500000;  v_min(15)=0.000000; v_max(15)=1.000000;
		v_guess(16)=0.500000;  v_min(16)=0.000000; v_max(16)=1.000000;
		v_guess(17)=0.500000;  v_min(17)=0.000000; v_max(17)=1.000000;
		v_guess(18)=0.500000;  v_min(18)=0.000000; v_max(18)=1.000000;



-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-12
AbsTol: 1e-12
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-12
ivp_AbsTol: 1e-12
sensmex: cvodesg_problem
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 5


--> Number of model parameters: 13

--> Vector of parameters (nominal values):

	par0=[   0.07100     0.14300     0.21400     0.28600     0.35700     0.42900     0.50000     0.57100     0.64300     0.71400     0.78600     0.85700     0.92900  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.670e-01  3.330e-01  5.000e-01  6.670e-01  8.330e-01  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 20: 	 0.000e+00  5.263e-02  1.053e-01  1.579e-01  2.105e-01  2.632e-01  3.158e-01  3.684e-01  4.211e-01  4.737e-01  5.263e-01  5.789e-01  6.316e-01  6.842e-01  7.368e-01  7.895e-01  8.421e-01  8.947e-01  9.474e-01  1.000e+00  

--> There is no manipulable (control, stimulus, input) variable, inputs.model.n_stimulus=0


-->Number of observables:
	Experiment 1: 4

-->Observables:
		Experiment 1:
			Y1=n  
			Y2=e  
			Y3=s+m
			Y4=p  

-->Number of sampling times for each experiment:
		Experiment 1: 	 20

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     0.053     0.105     0.158     0.211     0.263     0.316     0.368     0.421     0.474     0.526     0.579     0.632     0.684     0.737     0.789     0.842     0.895     0.947     1.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		0.167  0.333  1.167  0.833
		0.161765  0.336739  1.16746  0.828272
		0.15672  0.340216  1.16762  0.823484
		0.151857  0.343437  1.16748  0.818637
		0.147168  0.346407  1.16707  0.813732
		0.142649  0.349131  1.16638  0.80877
		0.138292  0.351615  1.16543  0.803752
		0.13409  0.353863  1.16423  0.798679
		0.130039  0.35588  1.16279  0.793552
		0.126132  0.357672  1.16111  0.788372
		0.122364  0.359242  1.15922  0.78314
		0.11873  0.360597  1.15711  0.777858
		0.115224  0.361739  1.1548  0.772527
		0.111842  0.362675  1.1523  0.767147
		0.108579  0.363409  1.1496  0.76172
		0.105431  0.363946  1.14673  0.756248
		0.102393  0.364289  1.14368  0.750731
		0.0994617  0.364444  1.14048  0.745171
		0.0966322  0.364416  1.13711  0.739568
		0.0939011  0.364208  1.1336  0.733925
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 0.008886 %	 max error: 0.030568 %
		 Observable 2 --> mean error: 0.019494 %	 max error: 0.068086 %
		 Observable 3 --> mean error: 0.002004 %	 max error: 0.005259 %
		 Observable 4 --> mean error: 0.006441 %	 max error: 0.020114 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.000029 max data: 0.167000
		 Observable 2 -->  max residual: 0.000248 max data: 0.364444
		 Observable 3 -->  max residual: 0.000060 max data: 1.167620
		 Observable 4 -->  max residual: 0.000148 max data: 0.833000

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000000 
	   

>>>> Computational cost: 19.100000 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	muN     : 8.9113e-02  +-  3.7846e-02 (    42.5%); 
	muEE    : 8.2229e-01  +-  2.8829e-01 (    35.1%); 
	muLE    : 1.1088e-02  +-  1.2160e+01 ( 1.1e+05%); 
	muLL    : 6.2688e-04  +-  2.3988e+01 (3.83e+06%); 
	muM     : 6.1434e-01  +-  1.6711e+01 (2.72e+03%); 
	muP     : 1.9352e-01  +-  7.0581e+01 (3.65e+04%); 
	muPE    : 5.3404e-01  +-  2.3989e+02 (4.49e+04%); 
	muPL    : 6.9122e-01  +-  5.4642e+02 (7.91e+04%); 
	deltaNE : 6.2024e-01  +-  4.7934e-02 (    7.73%); 
	deltaEL : 3.1072e-01  +-  1.4116e-01 (    45.4%); 
	deltaLM : 4.5350e-01  +-  6.8970e+00 (1.52e+03%); 
	rhoE    : 6.5978e-01  +-  8.9057e-02 (    13.5%); 
	rhoP    : 9.7497e-01  +-  5.3069e+02 (5.44e+04%); 


>>> Estimated global initial conditions: 

	n : 1.6699e-01  +-  7.0567e-05 (  0.0423%); 
	e : 3.3297e-01  +-  8.2418e-05 (  0.0248%); 
	s : 7.9117e-01  +-  6.1194e+00 (     773%); 
	m : 3.7587e-01  +-  6.1193e+00 (1.63e+03%); 
	p : 8.3299e-01  +-  1.0047e-04 (  0.0121%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 6.005029e-01	 1.877548e-03	 -1.652960e-03	 1.513311e-03	 1.385306e-03	 -1.649773e-03	 -1.501181e-03	 -9.998551e-01	 -2.352084e-01	 -3.289652e-03	 5.982557e-01	 -1.516148e-03	 -6.497810e-01	 2.167278e-02	 3.012819e-03	 -3.012831e-03	 1.170999e-03
	 6.005029e-01	 1.000000e+00	 -2.813820e-02	 2.470949e-02	 -2.302443e-02	 9.335183e-03	 -3.825726e-03	 -8.306094e-03	 -6.007271e-01	 -9.147148e-01	 -4.132793e-02	 -2.627648e-01	 -6.918759e-03	 -4.021153e-01	 -4.677413e-01	 4.233010e-02	 -4.233028e-02	 -2.056196e-03
	 1.877548e-03	 -2.813820e-02	 1.000000e+00	 -9.775918e-01	 9.550602e-01	 2.302608e-01	 -4.229257e-01	 -2.797831e-01	 -1.893008e-03	 3.523383e-02	 9.510458e-01	 3.014362e-02	 -3.225725e-01	 1.251045e-03	 1.417481e-02	 -9.729215e-01	 9.729227e-01	 -5.157764e-01
	 -1.652960e-03	 2.470949e-02	 -9.775918e-01	 1.000000e+00	 -9.960422e-01	 -1.555621e-01	 3.590841e-01	 2.090301e-01	 1.666244e-03	 -3.092823e-02	 -9.946471e-01	 -2.644702e-02	 2.540265e-01	 -1.135251e-03	 -1.242867e-02	 9.995755e-01	 -9.995755e-01	 4.516820e-01
	 1.513311e-03	 -2.302443e-02	 9.550602e-01	 -9.960422e-01	 1.000000e+00	 1.219211e-01	 -3.273002e-01	 -1.763401e-01	 -1.525489e-03	 2.879859e-02	 9.996687e-01	 2.459716e-02	 -2.216648e-01	 1.086566e-03	 1.158127e-02	 -9.973677e-01	 9.973672e-01	 -4.186185e-01
	 1.385306e-03	 9.335183e-03	 2.302608e-01	 -1.555621e-01	 1.219211e-01	 1.000000e+00	 -9.777482e-01	 -9.984698e-01	 -1.407090e-03	 -1.033910e-02	 1.166864e-01	 -6.905660e-03	 -9.948673e-01	 3.076371e-04	 -9.910668e-03	 -1.476239e-01	 1.476259e-01	 -2.591058e-01
	 -1.649773e-03	 -3.825726e-03	 -4.229257e-01	 3.590841e-01	 -3.273002e-01	 -9.777482e-01	 1.000000e+00	 9.877468e-01	 1.673128e-03	 3.515874e-03	 -3.221674e-01	 1.174915e-03	 9.939061e-01	 -5.257694e-04	 6.861912e-03	 3.516765e-01	 -3.516784e-01	 3.376943e-01
	 -1.501181e-03	 -8.306094e-03	 -2.797831e-01	 2.090301e-01	 -1.763401e-01	 -9.984698e-01	 9.877468e-01	 1.000000e+00	 1.523474e-03	 9.036392e-03	 -1.711862e-01	 5.765614e-03	 9.989284e-01	 -3.290837e-04	 9.348012e-03	 2.013260e-01	 -2.013280e-01	 2.787151e-01
	 -9.998551e-01	 -6.007271e-01	 -1.893008e-03	 1.666244e-03	 -1.525489e-03	 -1.407090e-03	 1.673128e-03	 1.523474e-03	 1.000000e+00	 2.353086e-01	 3.279689e-03	 -5.984086e-01	 1.538797e-03	 6.601492e-01	 -2.168206e-02	 -3.001766e-03	 3.001777e-03	 -1.180070e-03
	 -2.352084e-01	 -9.147148e-01	 3.523383e-02	 -3.092823e-02	 2.879859e-02	 -1.033910e-02	 3.515874e-03	 9.036392e-03	 2.353086e-01	 1.000000e+00	 4.876119e-02	 6.299893e-01	 7.342111e-03	 1.579304e-01	 5.262584e-01	 -5.012473e-02	 5.012494e-02	 2.685186e-03
	 -3.289652e-03	 -4.132793e-02	 9.510458e-01	 -9.946471e-01	 9.996687e-01	 1.166864e-01	 -3.221674e-01	 -1.711862e-01	 3.279689e-03	 4.876119e-02	 1.000000e+00	 3.708912e-02	 -2.165264e-01	 4.287429e-03	 2.212786e-02	 -9.966961e-01	 9.966957e-01	 -4.130676e-01
	 5.982557e-01	 -2.627648e-01	 3.014362e-02	 -2.644702e-02	 2.459716e-02	 -6.905660e-03	 1.174915e-03	 5.765614e-03	 -5.984086e-01	 6.299893e-01	 3.708912e-02	 1.000000e+00	 4.380628e-03	 -3.981033e-01	 3.777451e-01	 -3.842190e-02	 3.842207e-02	 2.621364e-03
	 -1.516148e-03	 -6.918759e-03	 -3.225725e-01	 2.540265e-01	 -2.216648e-01	 -9.948673e-01	 9.939061e-01	 9.989284e-01	 1.538797e-03	 7.342111e-03	 -2.165264e-01	 4.380628e-03	 1.000000e+00	 -4.082328e-04	 8.583342e-03	 2.464254e-01	 -2.464274e-01	 2.964602e-01
	 -6.497810e-01	 -4.021153e-01	 1.251045e-03	 -1.135251e-03	 1.086566e-03	 3.076371e-04	 -5.257694e-04	 -3.290837e-04	 6.601492e-01	 1.579304e-01	 4.287429e-03	 -3.981033e-01	 -4.082328e-04	 1.000000e+00	 -1.452743e-02	 -4.234733e-03	 4.234749e-03	 2.929798e-03
	 2.167278e-02	 -4.677413e-01	 1.417481e-02	 -1.242867e-02	 1.158127e-02	 -9.910668e-03	 6.861912e-03	 9.348012e-03	 -2.168206e-02	 5.262584e-01	 2.212786e-02	 3.777451e-01	 8.583342e-03	 -1.452743e-02	 1.000000e+00	 -2.259116e-02	 2.259125e-02	 -6.615092e-03
	 3.012819e-03	 4.233010e-02	 -9.729215e-01	 9.995755e-01	 -9.973677e-01	 -1.476239e-01	 3.516765e-01	 2.013260e-01	 -3.001766e-03	 -5.012473e-02	 -9.966961e-01	 -3.842190e-02	 2.464254e-01	 -4.234733e-03	 -2.259116e-02	 1.000000e+00	 -1.000000e+00	 4.438906e-01
	 -3.012831e-03	 -4.233028e-02	 9.729227e-01	 -9.995755e-01	 9.973672e-01	 1.476259e-01	 -3.516784e-01	 -2.013280e-01	 3.001777e-03	 5.012494e-02	 9.966957e-01	 3.842207e-02	 -2.464274e-01	 4.234749e-03	 2.259125e-02	 -1.000000e+00	 1.000000e+00	 -4.438926e-01
	 1.170999e-03	 -2.056196e-03	 -5.157764e-01	 4.516820e-01	 -4.186185e-01	 -2.591058e-01	 3.376943e-01	 2.787151e-01	 -1.180070e-03	 2.685186e-03	 -4.130676e-01	 2.621364e-03	 2.964602e-01	 2.929798e-03	 -6.615092e-03	 4.438906e-01	 -4.438926e-01	 1.000000e+00
