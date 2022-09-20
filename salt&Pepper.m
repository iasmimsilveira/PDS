clear all
close all
clc
pkg load image

img = imread ('img_alface.jpg'); % Fazendo a leitura da imagem
figure,imshow(img); c=colorbar(), title('IMAGEM ORIGINAL'); % Visualizando

imgPB = rgb2gray(img);

figure,imshow(imgPB); c=colorbar(); % Vizualizando PB

img_noise = imnoise(imgPB,"salt & pepper");
figure,imshow(img_noise,[]);
