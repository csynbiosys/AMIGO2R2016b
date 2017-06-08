#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include <amigoSensRHS.h>

#include <amigo_terminate.h>


	/* *** Definition of the states *** */

#define	CL_m Ith(y,0)
#define	CL_c Ith(y,1)
#define	CL_n Ith(y,2)
#define	CT_m Ith(y,3)
#define	CT_c Ith(y,4)
#define	CT_n Ith(y,5)
#define	CP_n Ith(y,6)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dCL_m Ith(ydot,0)
#define	dCL_c Ith(ydot,1)
#define	dCL_n Ith(ydot,2)
#define	dCT_m Ith(ydot,3)
#define	dCT_c Ith(ydot,4)
#define	dCT_n Ith(ydot,5)
#define	dCP_n Ith(ydot,6)

	/* *** Definition of the parameters *** */

#define	n1 (*amigo_model).pars[0]
#define	n2 (*amigo_model).pars[1]
#define	g1 (*amigo_model).pars[2]
#define	g2 (*amigo_model).pars[3]
#define	m1 (*amigo_model).pars[4]
#define	m2 (*amigo_model).pars[5]
#define	m3 (*amigo_model).pars[6]
#define	m4 (*amigo_model).pars[7]
#define	m5 (*amigo_model).pars[8]
#define	m6 (*amigo_model).pars[9]
#define	m7 (*amigo_model).pars[10]
#define	k1 (*amigo_model).pars[11]
#define	k2 (*amigo_model).pars[12]
#define	k3 (*amigo_model).pars[13]
#define	k4 (*amigo_model).pars[14]
#define	k5 (*amigo_model).pars[15]
#define	k6 (*amigo_model).pars[16]
#define	k7 (*amigo_model).pars[17]
#define	p1 (*amigo_model).pars[18]
#define	p2 (*amigo_model).pars[19]
#define	p3 (*amigo_model).pars[20]
#define	r1 (*amigo_model).pars[21]
#define	r2 (*amigo_model).pars[22]
#define	r3 (*amigo_model).pars[23]
#define	r4 (*amigo_model).pars[24]
#define	q1 (*amigo_model).pars[25]
#define	q2 (*amigo_model).pars[26]
#define light	((*amigo_model).controls_v[0][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[0][(*amigo_model).index_t_stim])

	/* *** Definition of the algebraic variables *** */

/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	dCL_m=q1*CP_n*light+n1*CT_n/(g1+CT_n)-m1*CL_m/(k1+CL_m);
	dCL_c=p1*CL_m-r1*CL_c+r2*CL_n-m2*CL_c/(k2+CL_c);
	dCL_n=r1*CL_c-r2*CL_n-m3*CL_n/(k3+CL_n);
	dCT_m=n2*pow(g2,2)/(pow(g2,2)+pow(CL_n,2))-m4*CT_m/(k4+CT_m);
	dCT_c=p2*CT_m-r3*CT_c+r4*CT_n-m5*CT_c/(k5+CT_c);
	dCT_n=r3*CT_c-r4*CT_n-m6*CT_n/(k6+CT_n);
	dCP_n=(1-light)*p3-m7*CP_n/(k7+CP_n)-q2*light*CP_n;

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