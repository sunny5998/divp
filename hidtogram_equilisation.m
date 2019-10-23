close all
clear all

%Histogram equilisation using inbuilt function
Im=imread('D:\programs\DIVP\Images\penguin.jpg');
subplot(2,2,1);
imshow(Im);
title('Original image');

subplot(2,2,2);
imhist(Im);
title('Histogram of Original image');

Im1=histeq(Im);
subplot(2,2,3);
imshow(Im1);
title('Equilised image');

subplot(2,2,4);
imhist(Im1);
title('Histogram of equilised image');

