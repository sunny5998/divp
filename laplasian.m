close all
clear all

%Sharpening filter(laplacian)
a=imread('D:\programs\DIVP\Images\deer1.jpg');
k=input('Enter the value of k');
h1=[-1 -1 -1;-1 8 -1;-1 -1 -1];
h2=[-1 -1 -1;-1 k+8 -1;-1 -1 -1];
a1=conv2(a,h1,'same');
a2=imadd(double(a),double(a1));
a3=conv2(a,h2,'same');
subplot(2,2,1);
imshow(a);
title('Original image');
subplot(2,2,2);
imshow(a1);
title('Laplacian filter');
subplot(2,2,3);
imshow(a2);
title('addition of original image and laplacian filter');
subplot(2,2,4);
imshow(a3);
title('Highboost filter');