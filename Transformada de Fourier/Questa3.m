close all;

% Carregando a imagem
img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 4\Imagens\img.jpg');

% Imagem em escala de cinza
img_cinza = rgb2gray(img);
[i j k] = size(img_cinza);

% Criando o filtro
d0 = 180;
N = 2;
tipo = 'butt';
filtro = filtro_ideal(i, j, k, d0, tipo, N);

transformacao_freq(img_cinza, filtro);