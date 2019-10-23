close all
clear all
%Contrast  stretching

Im=imread('D:\programs\DIVP\Images\penguin.jpg');
Im=imresize(Im,[255,255]);
[m,n]=size(Im);

r1=input('Enter the value of r1');
s1=input('Enter the value of s1');
r2=input('Enter the value of r2');
s2=input('Enter the value of s2');

m1=s1/r1;
m2=(s2-s1)/(r2-r1);
m3=(255-s2)/(255-r2);

for i=1:m
    for j=1:n
        if(Im(i,j)<r1)
            Im1(i,j)=m1*Im(i,j);
        elseif(Im(i,j)>=r1&&Im(i,j)<=r2)
            Im1(i,j)=(Im(i,j)-r1)*m2+s1;
        else
            Im1(i,j)=(Im(i,j)-r2)*m3+s2;
        end
    end
end

subplot(1,2,1)
imshow(Im);
title('Original image');

subplot(1,2,2)
imshow(Im1);
title('Higher constrast image'); 
    