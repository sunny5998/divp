close all
clear all

%opening 
I=imread('C:\Users\durgesh\Desktop\DIVP\Images\lenna.jpg');
[r c]=size(I);
S=[1 1 1;1 1 1;1 1 1];                         %Structural element
for x=2:1:r-1
    for y=2:1:c-1
        OE=[S(1)*I(x-1,y-1) S(2)*I(x-1,y) S(3)*I(x-1,y+1) S(4)*I(x,y-1) S(5)*I(x,y) S(6)*I(x,y+1) S(7)*I(x+1,y-1) S(8)*I(x+1,y) S(9)*I(x+1,y+1)];
        E(x,y)=min(OE);                        %Erosion
    end
end

[m n]=size(E);
for x=2:1:m-1
    for y=2:1:n-1
        OD=[S(1)*I(x-1,y-1) S(2)*I(x-1,y) S(3)*I(x-1,y+1) S(4)*I(x,y-1) S(5)*I(x,y) S(6)*I(x,y+1) S(7)*I(x+1,y-1) S(8)*I(x+1,y) S(9)*I(x+1,y+1)];
        D(x,y)=max(OD);                        %Dilation
    end
end

subplot(1,3,1);
imshow(I);
title('Original image');
subplot(1,3,2);
imshow(E);
title('image after erosion');
subplot(1,3,3);
imshow(D);
title('image after dilation(Opening)');