close all
clear all

%Sharpening filter(laplacian)
a=imread('D:\programs\DIVP\Images\deer1.jpg');

b=imnoise(a,'salt & pepper');
c=imnoise(a,'gaussian');
d=imnoise(a,'speckle');

h1=[-1 -1 -1;-1 8 -1;-1 -1 -1];

b1=conv2(b,h1,'same');  %computes the two-dimensional
convolution of matrices A and B.
c1=conv2(c,h1,'same');
d1=conv2(d,h1,'same');

subplot(3,2,1);
imshow(b);
title('Salt and pepper noise');

subplot(3,2,2);
imshow(b1);
title('Laplacian filter');

subplot(3,2,3);
imshow(c);
title('Gaussian noise');

subplot(3,2,4);
imshow(c1);
title('Laplacian filter');

subplot(3,2,5);
imshow(d);
title('Speckle noise');

subplot(3,2,6);
imshow(d1);
title('Laplacian filter');

