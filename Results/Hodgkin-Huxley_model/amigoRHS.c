#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include <amigoSensRHS.h>

#include <amigo_terminate.h>


	/* *** Definition of the states *** */

#define	yv Ith(y,0)
#define	yn Ith(y,1)
#define	ym Ith(y,2)
#define	yh Ith(y,3)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dyv Ith(ydot,0)
#define	dyn Ith(ydot,1)
#define	dym Ith(ydot,2)
#define	dyh Ith(ydot,3)

	/* *** Definition of the parameters *** */

#define	gNa (*amigo_model).pars[0]
#define	gK  (*amigo_model).pars[1]
#define	gL  (*amigo_model).pars[2]
#define	VNa (*amigo_model).pars[3]
#define	VK  (*amigo_model).pars[4]
#define	VL  (*amigo_model).pars[5]
#define	Cm  (*amigo_model).pars[6]
#define TotalI	((*amigo_model).controls_v[0][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[0][(*amigo_model).index_t_stim])

	/* *** Definition of the algebraic variables *** */

	double	An;
	double	Bn;
	double	Am;
	double	Bm;
	double	Ah;
	double	Bh;
/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	An=0.01*((10-yv)/(exp((10-yv)*0.1)-1));
	Bn=0.125*exp(-yv/80);
	Am=0.1*((25-yv)/(exp((25-yv)*0.1)-1));
	Bm=4*exp(-yv/18);
	Ah=0.07*exp(-yv/20);
	Bh=1/(1+exp((30-yv)*0.1));
	dyv=-(gNa*pow(ym,3)*yh*(yv-VNa)+gK*pow(yn,4)*(yv-VK)+gL*(yv-VL)-TotalI)/Cm;
	dyn=An*(1-yn)-Bn*yn;
	dym=Am*(1-ym)-Bm*ym;
	dyh=Ah*(1-yh)-Bh*yh;

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