close all
clear all

%grey level slicing with background

Im=imread('D:\programs\DIVP\Images\penguin.jpg');
Im=imresize(Im,[255,255]);
[m,n]=size(Im);

x=input('Enter the first limit');
y=input('Enter the second limit');

for i=1:m
    for j=1:n
        if(Im(i,j)>=x & Im(i,j)<=y)
            Im1(i,j)=255;
        else
            Im1(i,j)=Im(i,j);
        end
    end
end

subplot(1,2,1);
imshow(Im);
title('Original iamge');
subplot(1,2,2);
imshow(Im1);
title('grey level slicing with background');


