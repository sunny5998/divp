close all
clear all

%log transform
image=imread('D:\programs\DIVP\Images\crow.jpg');
L=255;
c=L/log10(1+L);
image1=c*log10(1+double(image));

subplot(1,2,1);
imshow(image);
title('original image');
subplot(1,2,2);
imshow(uint8(image1));
title('Log transformation image');

