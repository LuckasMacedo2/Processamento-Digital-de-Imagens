img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 3\Imagens\img.jpg');

figure();
imshow(img);
title('Imagem Original');

Tam = 10;
Mascara = 1/(Tam*Tam) * ones(Tam,Tam);

img_filter = corr_conv(img, Mascara, 'corr');
img_filter1 = imfilter(img, Mascara);
img_filter2 = round(convn(img, Mascara));

figure();
imshow(img_filter);
title('Imagem Filtrada');

figure();
imshow(img_filter1);
title('Imagem Filtrada com imfilter');

figure();
imshow(img_filter2);
title('Imagem Filtrada com convn');