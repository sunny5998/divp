close all
clear all

%low pass filter
Im=imread('D:\programs\DIVP\Images\hibiscus.tif');
S=size(Im);
N=S(1);
vv=fft2(Im);
vc=fftshift(vv);

D0=input('Enter the cutoff frequency');
for u=1:1:S(1)
    for v=1:1:S(2)
        D=((u-(N/2))^2+(v-(N/2))^2)^0.5;
        if D<D0;
            H(u,v)=1;
        else
            H(u,v)=0;
        end
    end
end

x=vc.*H;
X=abs(ifft2(x));
subplot(2,2,1);
imshow(uint8(Im));
title('Original image');
subplot(2,2,2);
mesh(H);
title('3D image');
subplot(2,2,3);
imshow(uint8(X));
title('output image');
subplot(2,2,4);
imagesc(H);


