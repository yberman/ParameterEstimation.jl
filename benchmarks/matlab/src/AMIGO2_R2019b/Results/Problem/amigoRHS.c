#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include <amigoSensRHS.h>

#include <amigo_terminate.h>


	/* *** Definition of the states *** */

#define	n Ith(y,0)
#define	e Ith(y,1)
#define	s Ith(y,2)
#define	m Ith(y,3)
#define	p Ith(y,4)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dn Ith(ydot,0)
#define	de Ith(ydot,1)
#define	ds Ith(ydot,2)
#define	dm Ith(ydot,3)
#define	dp Ith(ydot,4)

	/* *** Definition of the parameters *** */

#define	muN     (*amigo_model).pars[0]
#define	muEE    (*amigo_model).pars[1]
#define	muLE    (*amigo_model).pars[2]
#define	muLL    (*amigo_model).pars[3]
#define	muM     (*amigo_model).pars[4]
#define	muP     (*amigo_model).pars[5]
#define	muPE    (*amigo_model).pars[6]
#define	muPL    (*amigo_model).pars[7]
#define	deltaNE (*amigo_model).pars[8]
#define	deltaEL (*amigo_model).pars[9]
#define	deltaLM (*amigo_model).pars[10]
#define	rhoE    (*amigo_model).pars[11]
#define	rhoP    (*amigo_model).pars[12]

	/* *** Definition of the algebraic variables *** */

/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	dn=-1*n*muN-n*p*deltaNE;
	de=n*p*deltaNE-e*e*muEE-e*deltaEL+e*p*rhoE;
	ds=s*deltaEL-s*deltaLM-s*s*muLL-e*s*muLE;
	dm=s*deltaLM-muM*m;
	dp=p*p*rhoP-p*muP-e*p*muPE-s*p*muPL;

	return(0);

}


/* Jacobian of the system (dfdx)*/
int amigoJAC(long int N, realtype t, N_Vector y, N_Vector fy, DlsMat J, void *user_data, N_Vector tmp1, N_Vector tmp2, N_Vector tmp3){
	AMIGO_model* amigo_model=(AMIGO_model*)user_data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	return(0);
}

/* R.H.S of the sensitivity dsi/dt = (df/dx)*si + df/dp_i */
int amigoSensRHS(int Ns, realtype t, N_Vector y, N_Vector ydot, int iS, N_Vector yS, N_Vector ySdot, void *data, N_Vector tmp1, N_Vector tmp2){
	AMIGO_model* amigo_model=(AMIGO_model*)data;

	return(0);

}