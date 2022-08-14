clc;
clear all;
close all;
[a b]=uigetfile('*.*');
c=strcat(b,a);
d=imread(c);

k=rgb2gray(d);
subplot(3,3,1);
imshow(k);
g=imnoise(k,'gaussian');
subplot(3,3,2);
imshow(g);
title("Gaussian noise");
g1=imnoise(k,'poisson');
subplot(3,3,4);
imshow(g1);
title("Poisson noise");
g2=imnoise(k,'salt & pepper');
subplot(3,3,6);
imshow(g2);
title("Salt & Pepper noise");
g3=imnoise(k,'speckle');
subplot(3,3,8);
imshow(g3);
title("Speckle noise");

title("Original gray image");
e=menu('FILTER','Median','Wiener');
if e==1
  
    r=medfilt2(g);
    subplot(3,3,3);
    imshow(r);
    title("Gaussian - Filtered");
    
    r1=medfilt2(g1);
    subplot(3,3,5);
    imshow(r1);
    title("Poisson - Filtered");
 
    r2=medfilt2(g2);
    subplot(3,3,7);
    imshow(r2);
    title("Salt&Pepper - Filtered");

    r3=medfilt2(g3);
    subplot(3,3,9);
    imshow(r3);
    title("Speckle - Filtered image");
    sgtitle('Median filter') 
  
elseif e==2
    r=wiener2(g);
    subplot(3,3,3);
    imshow(r);
    title("Gaussian - Filtered");

    r1=wiener2(g1);
    subplot(3,3,5);
    imshow(r1);
    title("Poisson - Filtered");
    
    r2=wiener2(g2);
    subplot(3,3,7);
    imshow(r2);
    title("Salt&Pepper - Filtered");
    
    r3=medfilt2(g3);
    subplot(3,3,9);
    imshow(r3);
    title("Speckle - Filtered image");
    sgtitle('Wiener filter') 
end