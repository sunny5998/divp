close all
clear all
%Gobal thresholding

I=imread('D:\programs\DIVP\Images\penguin.jpg');
[r c]=size(I);
subplot(1,2,1);
imshow(I);
k=0;
for i=1:1:r
    for j=1:1:c
        k=k+I(i,j);
    end
end
k=k/255;
disp(k);
th=input('Enter the value for threshold');
dt=input('Enter the value deltaT');
h=zeros(1,256);
for i=1:1:r
    for j=1:1:c
        t=I(i,j)+1;
        h(t)=h(t)+1;
    end
end

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

cnt=1;
while((abs(tn-th)<=dt))
    cnt=cnt+1;
    g1=0;
    g2=0;
    gt1=0;
    gt2=0;
    th=tn;
 
    for i=1:1:tn
         g1=i*h(i)+g1;
        gt1=gt1+h(i);
    end
    m1=g1/gt1;
    for i=tn:1:255
          g1=i*h(i)+g1;
        gt1=gt1+h(i);
    end
    m2=g2/gt2;
    tn=(m1+m2)/2;
end

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
     

