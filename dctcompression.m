close all
clear all

%DCT & IDCT
Im=imread('D:\programs\DIVP\Images\lenna.jpg');
[M,N]=size(Im);
C=sqrt(2/N);
for u=0:1:N-1
    for v=0:1:N-1
        if u==0
            c(u+1,v+1)=1/sqrt(N);
        else
            c(u+1,v+1)=C*cos(((pi*(2*v)+1)*u)/(2*N));
        end
    end
end

final_dct=double(c)*double(Im)*double(c');

A=double(c')*double(final_dct)*double(c);

subplot(1,3,1);
imshow(Im);
title('Original image');
subplot(1,3,2);
imshow(uint8(final_dct));
title('DCT image');
subplot(1,3,3);
imshow(uint8(A));
title('IDCT image');


