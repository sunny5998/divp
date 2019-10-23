close all
clear all

%image negative
image1=imread('D:\programs\DIVP\Images\deer1.jpg');
subplot(1,2,1);
imshow(image1);
title('Original image');

image2=255-image1;
subplot(1,2,2);
imshow(image2);
title('Negative image');