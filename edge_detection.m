clc;
clear all;
close all;
[a b]=uigetfile('*.*');
c=strcat(b,a);
d=imread(c);
e=rgb2gray(d)
v1=imadjust(e)
subplot(3,3,1);
imshow(v1);
title("Contrat adjusted gray image")

r=edge(v1,'sobel');
subplot(3,3,2);
imshow(r);
title("Sobel")

t=strel('square',4);
o=imdilate(r,t);
subplot(3,3,3);
imshow(o);
title("Sobel - square")

r1=edge(v1,'roberts');
subplot(3,3,4);
imshow(r1);
title("Roberts")

t1=strel('diamond',3)
o1=imdilate(r1,t1);
subplot(3,3,5);
imshow(o1);
title("Roberts - diamond")

r2=edge(v1,'canny');
subplot(3,3,6);
imshow(r2);
title("Canny")

t2=strel('disk',3)
o2=imdilate(r2,t2);
subplot(3,3,7);
imshow(o2);
title("Canny - disk")

r3=edge(v1,'prewitt');
subplot(3,3,8);
imshow(r3);
title("Prewitt")

t3=strel('octagon',3);
o3=imdilate(r3,t3);
subplot(3,3,9);
imshow(o3);
title("Prewitt - octagon")
sgtitle('Edge detection & Morphological operation') 