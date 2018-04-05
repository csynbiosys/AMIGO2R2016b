% Pre-adjust the bright field image (Modified by Hao)

% Image=imread(files{1});
% Image=imadjust(Image);
% imwrite(Image,files{1});

I=imread('t000002c1.tif');

%Ishowed=imshow(I);
% BW = createMask(e,Ishowed);
% imshow(BW);
% B = imoverlay(I,BW,[color,color,color]);
% imshow(B);

% BW1=roipoly(I);
% I_1 = regionfill(I,BW1);
% BW2=roipoly(I_1);
% I_2 = regionfill(I_1,BW2);
% imshow(I_2)
Mask=Get_Background_Mask(I,2);