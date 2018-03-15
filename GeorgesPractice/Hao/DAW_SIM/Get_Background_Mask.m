function Mask=Get_Background_Mask(Number_of_Sections)
    % Get the image
    [FileName,PathName] = uigetfile('*.tif','Select an image to create mask');
    Image=imread([PathName,FileName]);

    Mask=cell(1,Number_of_Sections);
    for i=1:Number_of_Sections
        Mask{i}=roipoly(Image);
        Image = regionfill(Image,Mask{i});
        imshow(Image);
    end
end