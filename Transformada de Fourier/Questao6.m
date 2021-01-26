%close all;

% Carregando a imagem
img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 4\Imagens\img.jpg');

% Imagem em escala de cinza
img_cinza = rgb2gray(img);
[i j k] = size(img_cinza);

% Criando o filtro
m = 75;
n = 150;
tipo = 'baixa';
filtro = filtro_quadrado(i, j, k, m, n);

transformacao_freq(img_cinza, filtro);