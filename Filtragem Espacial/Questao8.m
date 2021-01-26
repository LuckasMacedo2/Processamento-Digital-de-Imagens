img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 3\Imagens\img2.jpg');
Tam = 10;
w = 1/(Tam*Tam) * ones(Tam,Tam);

figure();
img_s = imfilter(img, w, 'symmetric');
imshow(img_s);
title('Imagem com padding symmetric');

figure();
img_r = imfilter(img, w, 'replicate');
imshow(img_r);
title('Imagem com padding replicate');

figure();
img_c = imfilter(img, w, 'circular');
imshow(img_c);
title('Imagem com padding circular');