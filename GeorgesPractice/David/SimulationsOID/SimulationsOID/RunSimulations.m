function [] = RunSimulations ()

settings = {'1-eSS_dhc','eSS','dhc','','','','';
    '6-DE_030856','de','',0.3,0.85,6,'';
    '12-SRES_045','sres','','','','',0.45;
    '9-DE_dhc_03056','de','dhc',0.3,0.5,6,'';
    '10-DE_nl2sol_030856','de','nl2sol',0.3,0.85,6,'';
    '15-SRES_dhc_045','sres','dhc','','','',0.45;
    '16-SRES_nl2sol_045','sres','nl2sol','','','',0.45;
    '3-eSS_nl2sol','eSS','nl2sol','','','','';
    '5-DE_03056','de','',0.3,0.5,6,'';
    '8-DE_030853','de','',0.3,0.85,3,'';
    '7-DE_050856','de','',0.5,0.85,6,'';
    '13-SRES_035','sres','','','','',0.35;
    '14-SRES_06','sres','','','','',0.6;
    '2-eSS_fminsearch','eSS','fminsearch','','','','';
    '4-eSS_fmincon','eSS','fmincon','','','','';
    '11-DE_nl2sol_030852','de','nl2sol',0.3,0.85,2,'';
    '17-eSS_nolocal','eSS','','','','','';
    '18-DE_030859','de','',0.3,0.85,9,'';
    '19-DE_fminsearch_05056','de','fminsearch',0.5,0.5,6,'';
    '20-DE_fmincon_050856','de','fmincon',0.5,0.85,6,''};


for x=1:length(settings(:,1))
    try
        run_in_silico_experiment_parfor_Optimised(settings{x,1},settings{x,2},settings{x,3},settings{x,4},settings{x,5},settings{x,6},settings{x,7});
    catch err
        errorFile = ['SIMULATION-',x,'-ERROR.errorLog'];
        fid = fopen(errorFile,'a+');
        fprintf(fid, '%s', err.getReport('extended', 'hyperlinks','off'));
        fclose(fid);
    end
end

end