close all
clear all

%RGB to HSI

Im=imread('D:\programs\DIVP\Images\myna.jpg');
subplot(2,4,1);
imshow(Im);
title('Original image');

Im1=im2double(Im);   %represent the RGB image which is present in [0 255] in [0 1] range
RC=size(Im1);
R=Im1(:,:,1);
G=Im1(:,:,2);
B=Im1(:,:,3);
plane=zeros(RC(1),RC(2));

RED=cat(3,R,plane,plane);
subplot(2,4,2);
imshow(RED);
title('RED plane');

GREEN=cat(3,plane,G,plane);
subplot(2,4,3);
imshow(GREEN);
title('GREEN plane');

BLUE=cat(3,plane,plane,B);
subplot(2,4,4);
imshow(BLUE);
title('BLUE plane');

num=0.5.*((R-G)+(R-B));
deno=((R-G).^2+((R-B).*(G-B))).^0.5;
theta=acosd(num./(deno+0.000001));    %to avoid divide by exception add a small no in denominator
if(B<=G)
    H=theta;
else 
    H=360-theta;
end

H=H/360;    %normalize to the range[0 1]
subplot(2,4,5);
imshow(H);
title('H plane');

num1=min(min(R,G),B);
den1=R+G+B;
S=1-(3*num1./den1);
subplot(2,4,6);
imshow(S);
title('S plane');

I=den1./3;
subplot(2,4,7);
imshow(I);
title('I plane');

HSI=cat(3,H,S,I);
subplot(2,4,8);
imshow(HSI);
title('HSI image');


