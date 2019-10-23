close all
clear all

%RGB to YIQ
a=imread('D:\programs\DIVP\Images\myna.jpg');
subplot(2,3,1);
imshow(a);
title('Original image');

a1=a2double(a);   %represent the RGB image which is present in [0 255] in [0 1] range
RC=size(a1);
R=a1(:,:,1);
G=a1(:,:,2);
B=a1(:,:,3);

Y=0.3*R+0.59*G+0.11*B;
subplot(2,3,2);
imshow(Y);
title('Y plane');

I=0.21*R-0.28*G+0.31*B;
subplot(2,3,3);
imshow(I);
title('I plane');

Q=0.21*R-0.52*G+0.31*B;
subplot(2,3,4);
imshow(Q);
title('Q plane');

YIQ=cat(3,Y,I,Q);
subplot(2,3,5);
imshow(YIQ);
title('YIQ image');