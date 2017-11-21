clear all;

NOPFL_PseudoData

AMIGO_Prep(inputs)


%% homo_var data
% the noise is constant for each experiment. The user gives the relative
% standard deviation, that is scaled by the maximum simulation value.
cprintf('*[1,0.5,0]','\n\n --->Generating data with homoscedastic constant noise');
pause(1)
clear
NOPFL_PseudoData;
inputs.exps.noise_type = 'homo_var'; 
inputs.exps.std_dev{1} = ones(1,1)*0;  % 10% noise

AMIGO_SData(inputs)

