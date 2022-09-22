clear all
close all
clc
pkg load image

img = imread ('img_dente.jpg');
figure,imshow(img); c=colorbar();set(c,'FontSize',10);

%Máscara vertical para detectar bordas horizontais
sH = fspecial('sobel');
S_H = filter2(sH,img,'same');
S_H = abs (S_H);

%Máscara horizontal para detectar bordas verticais
sV = sH';
S_V = filter2(sV,img,'same');
S_V = abs(S_V);

%Magnitute do gradiente
S_H_V = S_H + S_V;

%Sobel
figure,imshow(S_H,[]); c=colorbar();set(c,'FontSize',10);
figure,imshow(S_V,[]); c=colorbar();set(c,'FontSize',10);
figure,imshow(S_H_V,[]); c=colorbar();set(c,'FontSize',10);
