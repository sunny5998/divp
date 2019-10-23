close all
clear all

%powerlaw transform

image=imread('C:\Users\durgesh\Desktop\DIVP\Images\penguin.jpg');
gamma=input('Enter the value for gamma');
image1=double(image).^gamma;

subplot(1,2,1);
imshow(image);
title('original image');

subplot(1,2,2);
imshow(uint8(image1));   %%uint8= Convert data to unsigned 8-bit integers
title('Powerlaw transformation');
