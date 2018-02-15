function [] = run_in_silico_experiment( resultBase, numExperiments )

global epccOutputResultFileNameBase;
global IPTGe

cd ('../../');
AMIGO_Startup();

cd ('Examples/In_Silico_Loop');
IPTGExt = [0:0.1:49, 50:10:1000,1100:1000:1e4];     
for epcc_exps=1:numExperiments
    for ip = 1:length(IPTGExt)
        IPTGe = IPTGExt(ip);
        try
            epccOutputResultFileNameBase = [resultBase,'-',num2str(epcc_exps)];
            %PLac_in_silico;
            %InduciblePromoter_in_silico;
            InduciblePromoter_Kf_varying;
        catch err
            %open file
            errorFile = [resultBase,'-',num2str(epcc_exps),'.errorLog'];
            fid = fopen(errorFile,'a+');
            fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
            % close file
            fclose(fid);
        end
    end
end

