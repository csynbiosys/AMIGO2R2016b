#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include <amigoSensRHS.h>

#include <amigo_terminate.h>


	/* *** Definition of the states *** */

#define	Cit_mrna    Ith(y,0)
#define	Cit_foldedP Ith(y,1)
#define	Cit_fluo    Ith(y,2)
#define	Cit_AU      Ith(y,3)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dCit_mrna    Ith(ydot,0)
#define	dCit_foldedP Ith(ydot,1)
#define	dCit_fluo    Ith(ydot,2)
#define	dCit_AU      Ith(ydot,3)

	/* *** Definition of the parameters *** */

#define	alpha1   (*amigo_model).pars[0]
#define	Vm1      (*amigo_model).pars[1]
#define	h1       (*amigo_model).pars[2]
#define	Km1      (*amigo_model).pars[3]
#define	d1       (*amigo_model).pars[4]
#define	alpha2   (*amigo_model).pars[5]
#define	d2       (*amigo_model).pars[6]
#define	Kf       (*amigo_model).pars[7]
#define	sc_molec (*amigo_model).pars[8]
#define IPTG	((*amigo_model).controls_v[0][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[0][(*amigo_model).index_t_stim])

	/* *** Definition of the algebraic variables *** */

/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	dCit_mrna=alpha1+Vm1*(pow(IPTG,h1)/(pow(Km1,h1)+pow(IPTG,h1)))-d1*Cit_mrna;
	dCit_foldedP=alpha2*Cit_mrna-(d2+Kf)*Cit_foldedP;
	dCit_fluo=Kf*Cit_foldedP-d2*Cit_fluo;
	dCit_AU=dCit_fluo/sc_molec;

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