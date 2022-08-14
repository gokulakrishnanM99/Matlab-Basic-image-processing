clc;
clear all;
close all;
[a b]=uigetfile('*.*');
c=strcat(b,a)
d=imread(c)
e=imread(c)
f=imread(c)
subplot(2,2,1);
imshow(d);
title('Original image');
d(:,:,2)=0
d(:,:,3)=0
subplot(2,2,2);
imshow(d);
title('Red channel');
e(:,:,1)=0
e(:,:,2)=0
subplot(2,2,3);
imshow(e);
title('Blue channel');
f(:,:,1)=0
f(:,:,3)=0
subplot(2,2,4);
imshow(f);
title('Green channel');
sgtitle('RGB Channels of an image') 