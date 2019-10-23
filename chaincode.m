close all
clear all
%chain code
I=imread('C:\Users\durgesh\Desktop\DIVP\Images\Untitled.bmp');
[m n]=imresize(I,[20 20]);
A=[m n];
[r c]=size(A);
disp('image array is');
disp(A);
flag=0;
d=[];
diff=[];

%starting point
for i=1:1:r
    for j=1:1:c
        if (A(i,j)==0)
            x=i;
            y=j;    
        end
    end
end
disp('starting point is');
disp([x y]);

if(A(x,y+1)==0)      %right
    X=x;
    Y=y+1;
    d=[d,0];
elseif(A(x-1,y)==0)      %up
    X=x-1;
    Y=y;
    d=[d,1];
elseif(A(x,y-1)==0)      %left
    X=x;
    Y=y-1;
    d=[d,2];
elseif(A(x+1,y)==0)      %down
    X=x+1;
    Y=y;
    d=[d,3];
end

while((X~=x)||(Y~=y))
    if((A(X,Y+1)==0)&&(d(end)~=2))
        Y=Y+1;
        d=[d,0];
    elseif((A(X-1,Y)==0)&&(d(end)~=3))
        X=X-1;
        d=[d,1];
    elseif((A(X,Y-1)==0)&&(d(end)~=0))
        Y=Y-1;
        d=[d,2];
    elseif((A(X+1,Y)==0)&&(d(end)~=1))
        X=X+1;
        d=[d,3];
    end
end

disp('chain code is');
disp(d);

%Calculating first difference
for i=1:1:length(d)
    if(i==length(d))
        k=d(1)-d(i);
    else
        k=d(i+1)-d(i);
    end
    if(k>=0)
        diff=[diff,k];
    else
        diff=[diff,(4+k)];
    end
end
disp('Difference code is');
disp(diff);

%shape number
shape=[];
shapes=[];
for i=1:1:length(diff)
    shape=[circshift(diff',i)'];
    shapes=[shapes,shape];
end
i=size(shapes);
while(i(1)>1)
    for j=1:1:length(diff)
        if(shapes(1,j)>=shapes(2,j))
            shapes(1,:)=[];
            break;
        elseif(shapes(1,j)<shape(2,j))
            shapes(2,:)=[];
            break;
        end
    end
    %i=size(shapes);
end
shapeno=shapes;
disp('shape number is');
disp(shapeno);
        
        