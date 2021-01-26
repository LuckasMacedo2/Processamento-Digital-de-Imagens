function imagem = Questao2(img, gama, c)

    %img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 2\Imagens\img.jpg');

    img_cinza = escala_cinza(img);
    %imshow(img_cinza);
    %title('Imagem em escala de cinza');

    img_corr = correcao_gama(img_cinza, gama, c);
    %figure();
    %imshow(img_corr);
    %title(strcat('Imagem com correcao gama =  ', num2str(gama)));

    imagem = normaliza(img_corr);
    %figure();
    %imshow(imagem);
    %title(strcat('Imagem normalizada com correcao gama =  ', num2str(gama)));

end