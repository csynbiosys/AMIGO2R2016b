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
#define	x5 Ith(y,4)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dx1 Ith(ydot,0)
#define	dx2 Ith(ydot,1)
#define	dx3 Ith(ydot,2)
#define	dx4 Ith(ydot,3)
#define	dx5 Ith(ydot,4)

	/* *** Definition of the parameters *** */

#define	p1 (*amigo_model).pars[0]
#define	p2 (*amigo_model).pars[1]
#define	p3 (*amigo_model).pars[2]
#define	p4 (*amigo_model).pars[3]
#define	p5 (*amigo_model).pars[4]

	/* *** Definition of the algebraic variables *** */

/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	dx1=-(p1+p2)*x1;
	dx2=p1*x1;
	dx3=p2*x1-(p3+p4)*x3+p5*x5;
	dx4=p3*x3;
	dx5=p4*x3-p5*x5;

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