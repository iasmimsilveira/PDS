clear all
close all
clc

pkg load image

img = imread('Tucano.jpg'); % Fazendo a leitura da imagem
figure,imshow(img); c=colorbar(); % Visualizando

% Laplaciano
h = [0 -1 0; -1 4 -1; 0 -1 0];
L = filter2(h, img, 'same');
L = abs (L);

figure,imshow(L, []); c=colorbar();


% Imagem com ruído
img2_noise = imnoise(img, "salt & pepper");
figure, imshow(img2_noise,'same');


% Aplicando o operador Laplaciano na imagem com ruído
L = filter2(h, img2_noise, 'same');
figure,imshow(L, []); c=colorbar();
