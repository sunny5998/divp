close all;
clear all;
clc;

image_1=imread('F:\BE_prac\DIVP\Images\im1.bmp');
image_2=imread('F:\BE_prac\DIVP\Images\im2.bmp');

subplot(2,3,1);
imshow(image_1);
title('Image_1');

subplot(2,3,2);
imshow(image_2);
title('image_2');

image_and=image_1&image_2;
subplot(2,3,3);
imshow(image_and);
title('Image after operation');

image_or=image_1|image_2;
subplot(2,3,4);
imshow(image_or);
title('Image after operation');

image_xor=xor(image_1,image_2);
subplot(2,3,5);
imshow(image_xor);
title('Image after operation');