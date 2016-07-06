%% Bipul Mohanto
% Color in Informatics and MEdia Technology
% contact: bipul.mohanto@yahoo.com
% LinkedIn: https://www.linkedin.com/in/mohantobipul
clear all
close all
clc

%% section 1
F=fopen('crossroad.dat');
Data=fread(F,'uint8=>uint8');
I=reshape(Data,435,[]);
imshow(I);
% if the image is in double type use imshow(I,[]);

% all these lines can be replaced if the key data are known
% this is the aim of the file format
% a viewer can open an image of each normalized format without precising
% the lines and the rows for example
% the header contains all th necessary dat to read images

clear I;
I=imread('crossroad.bmp');
% value first pixel
I(1,1)
% number of rows
size(I,1)
% number of columns
size(I,2)
% bottom right corner pixel
I(size(I,1),size(I,2))

% first row
L1=I(1,:); figure, bar(L1);
% first column
C1=I(:,1); figure, plot(C1);
% not homogeneous acquisition step

imwrite(I,'crossraod.tif');
imwrite(I,'crossroad.png');
imwrite(I,'crossroad.jpg','quality',10); % poor quality for jpg format try 100 and see the difference

%% section 3

close all
clear all
clc

I=imread('test pattern.jpg');
imshow(I);

% difference between two versions
% interpolation with imresize, no interpolation with basic subsampling
% some details are sometimes more preserved

I1=I(1:8:size(I,1),1:8:size(I,2));
figure, imshow(I1);

I2=imresize(I,1/8);
figure, imshow(I2);

%% section 4

close all
clear all
clc

I=imread('test pattern.jpg');
imshow(I);

I2=bitshift(bitshift(I,-4),4);
figure, imshow(I2);

%% section 5

close all
clear all
clc

I=imread('chro.tif');
imshow(I);

[I map] = imread('chro.tif');
figure, imshow(I,map);
figure, imshow(I,jet);


close all
clear all
clc

[I map] = imread('glucose.tif');
figure, imshow(I,map);

I2=ind2rgb(I,map);
imwrite(I2,'glucoseRGB.jpg');

close all
clear all
clc

I=imread('spectrum.png');
map=load('map.txt');
I2=rgb2ind(I,map);
imshow(I2,map);
 
J=imread('umbrella.jpg');
J2=rgb2ind(J,map);
imshow(J2,map);
% no universal map ! 
% this map works with spectrum, not with umbrella




