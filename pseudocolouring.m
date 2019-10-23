close all
clear all

%Pseudo colouring
Im=imread('D:\programs\DIVP\Images\deer1.jpg');
[m n]=size(Im);
Im=double(Im);
for i=1:m
    for j=1:n
        if Im(i,j)>=0&Im(i,j)<50
            Im1(i,j,1)=Im(i,j,1)+50;
            Im1(i,j,2)=Im(i,j)+100;
            Im1(i,j,3)=Im(i,j)+10;
        end
        if Im(i,j)>=50&Im(i,j)<100
            Im1(i,j,1)=Im(i,j)+152;
            Im1(i,j,2)=Im(i,j)-130;
            Im1(i,j,3)=Im(i,j)+15;
        end
        if Im(i,j)>=150&Im(i,j)<200
            Im1(i,j,1)=Im(i,j)-50;
            Im1(i,j,2)=Im(i,j)+140;
            Im1(i,j,3)=Im(i,j)-25;
        end
        if Im(i,j)>=200&Im(i,j)<=256
            Im1(i,j,1)=Im(i,j)-120;
            Im1(i,j,2)=Im(i,j)-160;
            Im1(i,j,3)=Im(i,j)-45;
        end
    end
end

subplot(1,2,1);
imshow(uint8(Im));
title('Original image');
subplot(1,2,2);
imshow(uint8(Im1));
title('Pseudo colouring');