close all
clear all

%RGB to CMY
Im=imread('D:\programs\DIVP\Images\myna.jpg');
subplot(2,3,1);
imshow(Im);
title('Original image');

Im1=im2double(Im);   %represent the RGB image which is present in [0 255] in [0 1] range
RC=size(Im1);
R=Im1(:,:,1);
G=Im1(:,:,2);
B=Im1(:,:,3);

C=1-R;
subplot(2,3,2);
imshow(C);
title('C plane');

M=1-G;
subplot(2,3,3);
imshow(M);
title('M plane');

Y=1-B;
subplot(2,3,4);
imshow(Y);
title('Y plane');

CMY=cat(3,C,M,Y);
subplot(2,3,5);
imshow(CMY);
title('CMY image');

