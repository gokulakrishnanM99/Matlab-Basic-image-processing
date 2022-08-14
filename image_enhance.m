clc;
clear all;
close all;
[a b]=uigetfile('*.*');
c=strcat(b,a);
d=imread(c);
e = rgb2gray(d)
subplot(2,2,1);
imshow(e);
title("Original gray image");

v1=imadjust(e)
subplot(2,2,2);
imshow(v1);
title("Contrst adjustment");

v2=histeq(e)
subplot(2,2,3);
imshow(v2);
title("Histogram adjustment");

v3=adapthisteq(e)
subplot(2,2,4);
imshow(v3);
title("Adaptive enhancement");
sgtitle('Image enhancement') 

