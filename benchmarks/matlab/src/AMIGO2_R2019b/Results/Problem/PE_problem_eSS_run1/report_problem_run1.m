   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2019a [March 2019]    *
   *********************************** 

Date: 29-May-2023
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
	log_var:	(1x15 double)
	maxeval:	60000
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

		v_guess(1)=5.000050;  v_min(1)=0.000100; v_max(1)=10.000000;
		v_guess(2)=5.000050;  v_min(2)=0.000100; v_max(2)=10.000000;
		v_guess(3)=5.000050;  v_min(3)=0.000100; v_max(3)=10.000000;
		v_guess(4)=5.000050;  v_min(4)=0.000100; v_max(4)=10.000000;
		v_guess(5)=5.000050;  v_min(5)=0.000100; v_max(5)=10.000000;
		v_guess(6)=5.000050;  v_min(6)=0.000100; v_max(6)=10.000000;
		v_guess(7)=5.000050;  v_min(7)=0.000100; v_max(7)=10.000000;
		v_guess(8)=5.000050;  v_min(8)=0.000100; v_max(8)=10.000000;
		v_guess(9)=5.000050;  v_min(9)=0.000100; v_max(9)=10.000000;
		v_guess(10)=5.000050;  v_min(10)=0.000100; v_max(10)=10.000000;
		v_guess(11)=1.000500;  v_min(11)=0.001000; v_max(11)=2.000000;
		v_guess(12)=1.000500;  v_min(12)=0.001000; v_max(12)=2.000000;
		v_guess(13)=1.000500;  v_min(13)=0.001000; v_max(13)=2.000000;
		v_guess(14)=1.000500;  v_min(14)=0.001000; v_max(14)=2.000000;
		v_guess(15)=1.000500;  v_min(15)=0.001000; v_max(15)=2.000000;



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


--> Number of model parameters: 10

--> Vector of parameters (nominal values):

	par0=[   0.10000     0.11000     0.10000     0.10000     0.09000     0.10000     0.10000     0.10000     0.10000     0.10000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.000e+00  1.000e+00  1.000e+00  1.000e+00  1.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 20.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 20: 	 0.000e+00  1.053e+00  2.105e+00  3.158e+00  4.211e+00  5.263e+00  6.316e+00  7.368e+00  8.421e+00  9.474e+00  1.053e+01  1.158e+01  1.263e+01  1.368e+01  1.474e+01  1.579e+01  1.684e+01  1.789e+01  1.895e+01  2.000e+01  

--> There is no manipulable (control, stimulus, input) variable, inputs.model.n_stimulus=0


-->Number of observables:
	Experiment 1: 4

-->Observables:
		Experiment 1:
			Y1=x    
			Y2=z    
			Y3=w    
			Y4=yy+vv

-->Number of sampling times for each experiment:
		Experiment 1: 	 20

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     1.053     2.105     3.158     4.211     5.263     6.316     7.368     8.421     9.474    10.526    11.579    12.632    13.684    14.737    15.789    16.842    17.895    18.947    20.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1  1  1  2
		0.905083  0.90999  0.984279  1.99483
		0.828232  0.828678  0.95942  1.98066
		0.766105  0.755054  0.927378  1.95925
		0.716006  0.688258  0.890032  1.93206
		0.675751  0.627551  0.84906  1.90033
		0.643563  0.572302  0.805882  1.86512
		0.617994  0.521966  0.761652  1.82729
		0.597863  0.476067  0.717282  1.7876
		0.582206  0.434189  0.673466  1.74666
		0.570233  0.395965  0.630719  1.70498
		0.561301  0.361066  0.589411  1.66299
		0.554882  0.3292  0.549794  1.62102
		0.550545  0.300102  0.512029  1.57937
		0.547934  0.273533  0.476208  1.53826
		0.546757  0.249276  0.442369  1.49785
		0.546773  0.227132  0.410509  1.4583
		0.547782  0.206922  0.380597  1.41969
		0.549619  0.188479  0.352581  1.38211
		0.552145  0.171653  0.326394  1.34562
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 0.000004 %	 max error: 0.000007 %
		 Observable 2 --> mean error: 0.000005 %	 max error: 0.000015 %
		 Observable 3 --> mean error: 0.000009 %	 max error: 0.000020 %
		 Observable 4 --> mean error: 0.000006 %	 max error: 0.000016 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.000000 max data: 1.000000
		 Observable 2 -->  max residual: 0.000000 max data: 1.000000
		 Observable 3 -->  max residual: 0.000000 max data: 1.000000
		 Observable 4 -->  max residual: 0.000000 max data: 2.000000

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000000 
	   

>>>> Computational cost: 57.860000 s
> 99.97% of successful simulationn
> 0.00% of successful sensitivity calculations


>>> Estimated global parameters: 

	lm   : 1.0000e-01  
	d    : 1.0000e-01  
	beta : 1.0000e-01  
	a    : 1.0000e-01  
	k    : 1.0000e-01  
	uu   : 1.0000e-01  
	c    : 1.0000e-01  
	q    : 1.0000e-01  
	b    : 1.0000e-01  
	h    : 1.0000e-01  


>>> Estimated global initial conditions: 

	x  : 1.0000e+00
	yy : 1.0000e+00
	vv : 1.0000e+00
	w  : 1.0000e+00
	z  : 1.0000e+00
