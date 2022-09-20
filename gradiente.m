clear all
close all
clc

pkg load image

img = imread('img_pulso.jpg'); % Fazendo a leitura da imagem
figure,imshow(img); % Visualizando

sH = fspecial('sobel');
S_H = filter2(sH,img,'same');
S_H = abs (S_H);

% Máscara horizontal para detectar bordas verticais
sV = sH;
S_V = filter2(sH,img,'same');
S_V = abs (S_H);

% Magnitude gradiente
S_H_V = S_H + S_V;

% Sobel
figure, imshow(S_H, []);
figure, imshow(S_V, []);
figure, imshow(S_H_V, []);

