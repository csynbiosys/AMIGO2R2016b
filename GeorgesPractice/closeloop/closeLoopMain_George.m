function result = closeLoopMain_George(model,exp,period,delay,n)
%model -- the information of the model under study. The structure should be
%   the same as in inputs.model
%exp ---- the original experiment design
%peroid - the duration of the experiment for each iteration, in seconds.
%delay -- how long we expect to wait before starting PE and OED, in seconds.
%n ------ the number of iterations, integer

%Setting up the input structure.
inputs.pathd.results_folder = ['CloseLoopPE',datestr(now,'yyyy-mm-dd-HHMMSS')];
inputs.pathd.short_name     = 'CLPE';
inputs.pathd.runident       = 'CloseLoopPE';
inputs.model=model;
inputs.exp=exp;
AMIGO_Prep(inputs);

%PEOED is running as a timer, so that its thread could run without any
%interruptions with the experiment.
PEOED=timer(...
    'TimerFcn',@subFcnPEOED,... % the function for PE and OED
    'BusyMode','error',... % report the error if the PEOED get called twise
    'ExecutionMode','singleShot',... % run once every time
    'UserData',inputs); % the original inputs structure is now saved as PEOED.UserData

%start the close loop
for i=1:n
    % start measuring the time 
    tic;
    
    % run the experiment part 1 and warn when it is not finished in time
    PEOED.UserData=subFcnRunExperimentPart1(PEOED.UserData);
    if (toc>delay)
        warning('The first part of the experiment did not finish in time.');
    end
    
    % start PE, OED, and run the experiment part 2
    start(PEOED);
    subFcnRunExperimentPart2(PEOED.UserData);
    
    % warn when part2 is not finished in time
    if (period<toc)
        warning('The second part of the experiment did not finish in time.');
    end
    
    % wait till the espected peroid
    pause(period-toc);
    
    % if the PE OED is still running, give a warning
    if (length(PEOED.running)<3)
        warning('PE and OED did not finish in time.');
    end
    
    % wait till the PE and OEd is finished.
    wait(PEOED);
    
end

result=PEOED.UserData;
end