#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include <amigoSensRHS.h>

#include <amigo_terminate.h>


	/* *** Definition of the states *** */

#define	x1 Ith(y,0)
#define	x2 Ith(y,1)
#define	x3 Ith(y,2)
#define	x4 Ith(y,3)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dx1 Ith(ydot,0)
#define	dx2 Ith(ydot,1)
#define	dx3 Ith(ydot,2)
#define	dx4 Ith(ydot,3)

	/* *** Definition of the parameters *** */

#define	a1    (*amigo_model).pars[0]
#define	v1    (*amigo_model).pars[1]
#define	v2    (*amigo_model).pars[2]
#define	d1    (*amigo_model).pars[3]
#define	d2    (*amigo_model).pars[4]
#define	d3    (*amigo_model).pars[5]
#define	K1    (*amigo_model).pars[6]
#define	Kf    (*amigo_model).pars[7]
#define	h1    (*amigo_model).pars[8]
#define	h2    (*amigo_model).pars[9]
#define	theta (*amigo_model).pars[10]

	/* *** Definition of the algebraic variables *** */

/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	dx1=v1*(a1+(1-a1)*pow(K1,-h1)/(pow(K1,-h1)+pow(pow(theta,h2)*x2/(pow(theta,h2)+pow(2.25*1000,h2)),-h1)))-d1*x1;
	dx2=v2*x1-d2*x2;
	dx3=v2*x1-(d3+Kf)*x3;
	dx4=Kf*x3-d3*x4;

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