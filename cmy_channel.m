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
d(:,:,1)=0

subplot(2,2,2);
imshow(d);
title('Cyan channel');
e(:,:,2)=0
subplot(2,2,3);
imshow(e);
title('Magenta channel');
f(:,:,3)=0
subplot(2,2,4);
imshow(f);
title('Yellow channel');
sgtitle('CMY Channels of an image') 
