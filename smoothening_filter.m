close all
clear all
%Smoothening filter

a=imread('C:\Users\sunny\Desktop\VLSI - DIVP\DIVP\horse.jpg');

% Addition of noise to the input image
b=imnoise(a,'salt & pepper');
c=imnoise(a,'gaussian');
d=imnoise(a,'speckle');

% Defining 3x3 and 5x5 kernel
h1=1/9*ones(3,3);
h2=1/25*ones(5,5);
h3=(1/16)*[1 2 1;2 4 2;1 2 1];
disp(h3);

% Attempt to recover the image
b1=conv2(b,h1,'same');
b2=conv2(b,h2,'same');
b3=conv2(b,h3,'same');
b4=medfilt2(b);
c1=conv2(c,h1,'same');
c2=conv2(c,h2,'same');
c3=conv2(c,h3,'same');
c4=medfilt2(c);
d1=conv2(d,h1,'same');
d2=conv2(d,h2,'same');
d3=conv2(d,h3,'same');
d4=medfilt2(d);

%Displaying the result
figure,subplot(2,3,1),imshow(a),title('Original Image'),
subplot(2,3,2),imshow(b),title('Salt & Pepper noise'),
subplot(2,3,3),imshow(uint8(b1)),title('3 x 3 Averaging filter'),
subplot(2,3,4),imshow(uint8(b2)),title('5 x 5 Averaging filter'),
subplot(2,3,5),imshow(uint8(b3)),title('Weighted filter'),
subplot(2,3,6),imshow(b4),title('Median filter');
%...........................
figure,subplot(2,3,1),imshow(a),title('Original Image'),
subplot(2,3,2),imshow(c),title('Gaussian noise'),
subplot(2,3,3),imshow(uint8(c1)),title('3 x 3 Averaging filter'),
subplot(2,3,4),imshow(uint8(c2)),title('5 x 5 Averaging filter'),
subplot(2,3,5),imshow(uint8(c3)),title('Weighted filter'),
subplot(2,3,6),imshow(c4),title('Median filter');
%..................
figure,subplot(2,3,1),imshow(a),title('Original Image'),
subplot(2,3,2),imshow(d),title('Speckle noise'),
subplot(2,3,3),imshow(uint8(d1)),title('3 x 3 Averaging filter'),
subplot(2,3,4),imshow(uint8(d2)),title('5 x 5 Averaging filter'),
subplot(2,3,5),imshow(uint8(b3)),title('Weighted filter'),
subplot(2,3,6),imshow(d4),title('Median filter');
