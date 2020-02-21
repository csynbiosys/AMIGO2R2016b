function gj= constr_fsqp(x,j)
global n_upper n_lower ccuu ccll neqc 
global n_fun_eval 
global input_par 
[fx ggg]= AMIGO_OEDcost(x,input_par{:});
Amatrix=[];
c=[];
for i=1:length(n_upper) 
c=[c ggg(n_upper(i))-ccuu(n_upper(i)-neqc)]; 
end 
for k=1:length(n_lower) 
c=[c ccll(n_lower(k)-neqc)-ggg(n_lower(k))]; 
end 
for i=1:neqc 
c=[c ggg(i)]; 
end 
gj=c(j); 
n_fun_eval=n_fun_eval+1; 
return
