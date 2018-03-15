function ExistNewFile=NewFile_Detect_and_Segment(Auto_Detect_Directory,Mask)
    global OldFilenames_c1 OldFilenames_c2

    % Only Detect files ending in c1 and c2
    Files_to_Detect_c1=[Auto_Detect_Directory,'\*c1.tif']; % Bf images
    Files_to_Detect_c2=[Auto_Detect_Directory,'\*c2.tif']; % Fluo images
 
    Readed_Files_c1=dir(Files_to_Detect_c1);
    Readed_Files_c2=dir(Files_to_Detect_c2);
    
    NewFilenames_c1={Readed_Files_c1.name};
    NewFilenames_c2={Readed_Files_c2.name};
    
    Detected_New_Files_c1=setdiff(NewFilenames_c1,OldFilenames_c1);
    Detected_New_Files_c2=setdiff(NewFilenames_c2,OldFilenames_c2);
    
    Detected_New_Files_c1=Detected_New_Files_c1{1};
    Detected_New_Files_c2=Detected_New_Files_c2{1};
           
    OldFilenames_c1=NewFilenames_c1;
    OldFilenames_c2=NewFilenames_c2;
    
    ExistNewFile_c1=~isempty(Detected_New_Files_c1);
    ExistNewFile_c2=~isempty(Detected_New_Files_c2);
    
    if (ExistNewFile_c1&&ExistNewFile_c2)
        ExistNewFile=1;

        % Pre-adjust the bright field image (Modified by Hao)
        Image=imread([Auto_Detect_Directory,'\',Detected_New_Files_c1]); % Read up the new c1 file
        % Cover with mask
        for MaskNum=1:length(Mask)
            Image = regionfill(Image,Mask{MaskNum});
        end
        % Adjust
        Image=imadjust(Image);
        % Save
        Saved_Adjusted_Filename=strrep(Detected_New_Files_c1,'c1','c0');
        imwrite(Image,[Auto_Detect_Directory,'\',Saved_Adjusted_Filename]);      
        %

        % CellStar Plugin
        % Create the destination directory
        % The result will be in
        % ExampleFiles/segments/

        movieDir = Auto_Detect_Directory;

        fileSubRegexp = '*';

        files = {fullfile(movieDir, Saved_Adjusted_Filename)};
            % or, if you want one or more specific files, for example
            % fullfile(movieDir, 'yeasts_bf1.tif')
            % fullfile(movieDir, 'yeasts_bf3.tif')
        
        destDirSeg = fullfile(movieDir, 'segments');
        if isdir(destDirSeg)==0
            mkdir(destDirSeg);
        end

        addpath('Segmentation', 'Tracking', 'UserInterface', 'Misc');

        disp('Init done!');


        % Let us get default parameter values for segmentation and tracking
        % precision goes from 0 (none) to 20 (veeery slow)
        % avgCellDiameter is the average diameter of an adult cell, in pixels: you
        % may try auto-detection by not providing it as a parameter to 
        % DefaultParameters(), at your own risk!
        parameters = DefaultParameters('precision', 12, 'avgCellDiameter', 11);
        parameters.debugLevel = 2;

        parameters.files.destinationDirectory = destDirSeg;

        % The background will be saved in this file
        parameters.files.background.imageFile = fullfile(movieDir, 'background.tif');

        % The background mask will be edited by hand if the background file does not
        % exist already: you may set this flag to false (or press "escape" when asked)
        % and try auto-detection, but at your own risk.
        % Or better you may use the user interface previously mentioned to edit the 
        % background.
        parameters.segmentation.background.manualEdit = true;

        % Let us choose which files to segment
        parameters.files.imagesFiles = files;

        % Additional fluorescence channel are mapped by replacing "yeasts_bf" with "yeasts_fluo" in
        % the original file name. There are many ways to associate additional
        % channels, see file DefaultParameters.m for more detailed information.
        parameters.files.additionalChannels{1}.fileMap = { 'regexp', 'c0', 'c2' };

        % Enable parallel processing if you want: for Matlab you need to start
        % matlabpool at some point before running the segmentation, while for
        % Octave no need.
        parameters.maxThreads = 4;
        % matlabpool;

        % This is to be run to be sure that nothing is missing, and to process
        % regular expressions in file names
        parameters = CompleteParameters(parameters);

        % Segment pictures

        parameters = RunSegmentation(parameters);

        disp('Segmentation done!');
    else
        ExistNewFile=0;
    end
end