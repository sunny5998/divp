close all
clear all

%Robert
I=imread('D:\programs\DIVP\Images\tajmahal1.jpg');
I1=imresize(I,[256 256]);
a=double(I1);
[r,c]=size(a);
w1=[1 0; 0 -1];
w2=[0 1;-1 0];
for x=2:1:r-1
    for y=2:1:c-1
        a1=w1(1)*a(x,y)+w1(2)*a(x,y+1)+w1(3)*a(x+1,y)+w1(4)*a(x+1,y+1);
        a2=w2(1)*a(x,y)+w2(2)*a(x,y+1)+w2(3)*a(x+1,y)+w2(4)*a(x+1,y+1);
    end
end


a3=a1+a2;
a4=edge(I,'robert');

subplot(2,3,1);
imshow(I);
subplot(2,3,2);
imshow(uint8(a1));
subplot(2,3,3);
imshow(uint8(a2));
subplot(2,3,4);
imshow(uint8(a3));
subplot(2,3,5);
imshow(a4);
