img = imread('D:\Estudos\Eng. de Computa��o\Processamento Digital de Imagens\Listas\Lista 2\Imagens\asd.jpg');
imagem = (Questao2(img, 2.5, 1));
figure();
histograma(imagem);
title('Histograma Quest�o 2, y = 2.5');

imagem = (Questao3(img, 2.5, 1));
figure();
histograma(imagem);
title('Histograma Quest�o 3, y = 2.5');