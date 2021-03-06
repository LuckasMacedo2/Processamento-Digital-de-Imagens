%close all;

% Carregando a imagem
img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 4\Imagens\img.jpg');

% Imagem em escala de cinza
[i j k] = size(img);

% Criando o filtro
d0 = 75;
N = 0;
tipo = 'baixa';
filtro = filtro_ideal(i, j, k, d0, tipo, N);

transformacao_freq(img, filtro);