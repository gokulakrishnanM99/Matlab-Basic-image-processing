clc;
clear all;
close all;
[a b]=uigetfile('*.*')
c=strcat(b,a);
iread=imread(c);
d=imresize(iread,[360,360])
[a1 b1]=uigetfile('*.*')
c1=strcat(b1,a1);
iread0=imread(c1);
d1=imresize(iread0,[360,360])
e=menu('image arithmetic','Add','Subtract','Multiply','Divide');
if e==1
    k=imadd(d,d1);
    figure;
    imshow(k);
    title("Addition")
elseif e==2
    h=imsubtract(d,d1);
    figure;
    imshow(h);
    title("Subtraction")
elseif e==3
    m=immultiply(d,d1);
    figure;
    imshow(m);
    title("Multiply")
elseif e==4
    d3=imdivide(d,d1);
    figure;
    imshow(d3);
    title("Divide")
end
