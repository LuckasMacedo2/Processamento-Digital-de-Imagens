function imagem = Questao3(img, gama, c)

    %img = imread('D:\Estudos\Eng. de Computação\Processamento Digital de Imagens\Listas\Lista 2\Imagens\asd.jpg');

    img_corr = correcao_gama(img, gama, c);
    %figure();
    %imshow(img_corr);
    %title('Imagem com correcao gama = 2.5');

    imagem = normaliza(img_corr);
    %figure();
    %imshow(imagem);
    %title(strcat('Imagem colorida normalizada com correcao gama =  ', num2str(gama)));

end