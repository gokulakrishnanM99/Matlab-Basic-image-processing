clc;
clear all;
close all;
[a b]=uigetfile('*.*')
c=strcat(b,a);
d=imread(c);
s=rgb2gray(d);
e2=rgb2gray(d);
e3=rgb2gray(d);

z=menu('Image processing','Crop','Resize','Rotate');
if z==1
    f=imcrop(d);
    figure;
    imshow(f);
    title("Cropped imgae")

elseif z==2
    v=imresize(d,[360,360]);
    figure;
    imshow(v);
    title("Resized imgae (360,360)")

elseif z==3
    r=imrotate(d,180);
    figure;
    imshow(r);
    title("Rotated imgae (180)")

end
