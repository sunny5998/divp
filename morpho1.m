close all
clear all

%Erosion and Dilation
I=imread('C:\Users\durgesh\Desktop\DIVP\Images\lenna.jpg');
[r c]=size(I);
S=[1 1 1;1 1 1;1 1 1];                         %Structural element
for x=2:1:r-1
    for y=2:1:c-1
        ED=[S(1)*I(x-1,y-1) S(2)*I(x-1,y) S(3)*I(x-1,y+1) S(4)*I(x,y-1) S(5)*I(x,y) S(6)*I(x,y+1) S(7)*I(x+1,y-1) S(8)*I(x+1,y) S(9)*I(x+1,y+1)];
        E(x,y)=min(ED);                        %Erosion
        D(x,y)=max(ED);                        %Dilation
    end
end

subplot(2,3,1);
imshow(I);
title('Original image');
subplot(2,3,2);
imshow(E);
title('Eroded image');
subplot(2,3,3);
imshow(D);
title('Dilated image');

%using inbuild function
e=imerode(I,S);
d=imdilate(I,S);
subplot(2,3,4);
imshow(I);
title('Original image');
subplot(2,3,5);
imshow(e);
title('Eroded image');
subplot(2,3,6);
imshow(d);
title('Dilated image');

