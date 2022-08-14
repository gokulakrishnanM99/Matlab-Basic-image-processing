clc;
clear all;
close all;
[a b]=uigetfile('*.*');
c=strcat(b,a);
e=imread(c);
d=imresize(e,[400,400]);
subplot(1, 2, 1);
imshow(d);
title("Origina image");
for i=1:200
    for j=1:200
        d(i,j,2)=0;
        d(i,j,3)=0;    
    end
end
for i=200:400
 for j=1:200
    d(i,j,2)=0;
    d(i,j,1)=0;
 end
end
for i=1:200
    for j=200:400
        d(i,j,3)=0;
        d(i,j,1)=0;  
    end
end
subplot(1,2,2);
imshow(d);
title("Modified image")
sgtitle('RGB Channels in an image') 