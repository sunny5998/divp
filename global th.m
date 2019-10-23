close all
clear all
%Gobal thresholding

I=imread('D:\programs\DIVP\Images\horse.jpg');
[r c]=size(I);
subplot(1,2,1);
imshow(I);
th=input('Enter the value for threshold');
dt=input('Enter the value deltaT');
h=zeros(1,256);
g1=0;
g2=0;
gt1=0;
gt2=0;

for i=1:1:th
    g1=i*h(i)+g1;
    gt1=gt1+h(i);
end
m1=g1/gt1;
for i=th:1:255
    g2=i*h(i)+g2;
    gt2=gt2+h(i);
end
m2=g2/gt2;
tn=(m1+m2)/2;

for i=1:1:r
    for j=1:1:c
        if  I(i,j)<th
            I(i,j)=0;
        else 
            I(i,j)=255;
        end
    end
end
subplot(1,2,2);
imshow(I);
     
