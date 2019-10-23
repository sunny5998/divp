close all
clear all

%Prewitt operator
Im=imread('D:\programs\DIVP\Images\tajmahal1.jpg');
Im1=imresize(Im,[256 256]);
a=double(Im1);
[r,c]=size(a);
w1=[-1 -1 -1;0 0 0;-1 -1 -1];
w2=w1';
for x=2:1:r-1
    for y=2:1:c-1
        a1=w1(1)*a(x-1,y-1)+w1(2)*a(x-1,y)+w1(3)*a(x-1,y+1)+w1(4)*a(x,y+1)+w1(5)*a(x,y)+w1(6)*a(x,y+1)+w1(7)*a(x+1,y-1)+w1(8)*a(x+1,y)+w1(9)*a(x+1,y+1);
        a2=w2(1)*a(x-1,y-1)+w2(2)*a(x-1,y)+w2(3)*a(x-1,y+1)+w2(4)*a(x,y+1)+w2(5)*a(x,y)+w2(6)*a(x,y+1)+w2(7)*a(x+1,y-1)+w2(8)*a(x+1,y)+w2(9)*a(x+1,y+1);
    end
end

a3=a1+a2;
a4=edge(Im,'prewitt');

subplot(2,3,1);
imshow(Im);
subplot(2,3,2);
imshow(uint8(a1));
subplot(2,3,3);
imshow(uint8(a2));
subplot(2,3,4);
imshow(uint8(a3));
subplot(2,3,5);
imshow(a4);
