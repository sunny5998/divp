close all
clear all

%Sharpening filter(laplacian)
a=imread('C:\Users\durgesh\Desktop\DIVP\Images\horse.jpg');

b=imnoise(a,'salt & pepper');
c=imnoise(a,'gaussian');
d=imnoise(a,'speckle');

k=input('Enter the value of k');
h1=[-1 -1 -1;-1 k+8 -1;-1 -1 -1];

b1=conv2(b,h1,'same');
c1=conv2(c,h1,'same');
d1=conv2(d,h1,'same');

subplot(3,2,1);
imshow(b);
title('Salt and pepper noise');
subplot(3,2,2);
imshow(b1);
title('Highboost filter');
subplot(3,2,3);
imshow(c);
title('Gaussian noise');
subplot(3,2,4);
imshow(c1);
title('Highboost filter');
subplot(3,2,5);
imshow(d);
title('Speckle noise');
subplot(3,2,6);
imshow(d1);
title('Highboost filter');

