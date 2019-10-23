 close all
clear all

%Bitplane slicing
a=imread('C:\Users\durgesh\Desktop\DIVP\Images\penguin.jpg');                                                    
[m n]=size(a);
%To extract 7th bit plane
for i=1:m,
    for j=1:n,
        b7(i,j)=bitand(a(i,j),128);     
    end
end
%To extract 6th bit plane

for i=1:m,
    for j=1:n,
        b6(i,j)=bitand(a(i,j),64);     
    end
end
%To extract 5th bit plane
for i=1:m,
    for j=1:n,
        b5(i,j)=bitand(a(i,j),32);     
    end
end
%To extract 4th bit plane
for i=1:m,
    for j=1:n,
        b4(i,j)=bitand(a(i,j),16);     
    end
end
%To extract 3rd bit plane
for i=1:m,
    for j=1:n,
        b3(i,j)=bitand(a(i,j),8);     
    end
end
%To extract 2nd bit plane
for i=1:m,
    for j=1:n,
        b2(i,j)=bitand(a(i,j),4);     
    end
end
%To extract 1st bit plane
for i=1:m,
    for j=1:n,
        b1(i,j)=bitand(a(i,j),2);     
    end
end
%To extract 0th bit plane
for i=1:m,
    for j=1:n,
        b0(i,j)=bitand(a(i,j),1);     
    end
end

%Reconstructed image
for i=1:m,
    for j=1:n,
        b8(i,j)=(b7(i,j)*128);
    end
end

%Code to show the resultant images
subplot(3,4,1),imshow(a),title('original image'),
subplot(3,4,3),imshow(b7),title('7th bitplane image'),
subplot(3,4,4),imshow(b6),title('6th bitplane image'),
subplot(3,4,5),imshow(b5),title('5th bitplane image'),
subplot(3,4,6),imshow(b4),title('4th bitplane image'),
subplot(3,4,7),imshow(b3),title('3rd bitplane image'),
subplot(3,4,8),imshow(b2),title('2nd bitplane image'),
subplot(3,4,9),imshow(b2),title('1st bitplane image'),
subplot(3,4,10),imshow(b2),title('0th bitplane image'),
subplot(3,4,12),imshow(b8),title('Reconstructed image'),
