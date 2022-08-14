clc;
clear all;
close all;
[a b]=uigetfile('*.*');
c=strcat(b,a)
d=imread(c)
subplot(1, 3, 1);
imshow(d);
title('Original image');
e=rgb2gray(d);
subplot(1, 3, 2);
imshow(e);
title('Gray image');
f=im2bw(d)
subplot(1, 3, 3);
imshow(f);
title('Black & white image');
sgtitle('Image Conversion') 
