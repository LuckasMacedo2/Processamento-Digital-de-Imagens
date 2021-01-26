img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 3\Imagens\img.jpg');


laplace = [1 1 1; 1 -8 1; 1 1 1];
sobel = [-1 -2 -1; 0 0 0; 1 2 1];


img_laplace_imf = imfilter(img, laplace);
img_laplace_fun = corr_conv(img, laplace, 'corr');

img_sobel_imf = imfilter(img, sobel);
img_sobel_fun = corr_conv(img, sobel, 'corr');

figure();
imshow(img_laplace_imf);
title('Laplace: Imagem filtrada imfilter');
figure();
imshow(img_laplace_fun);
title('Laplace: Imagem filtrada função');

figure();
imshow(img_sobel_imf);
title('Sobel: Imagem filtrada imfilter');
figure();
imshow(img_sobel_fun);
title('Sobel: Imagem filtrada função');
