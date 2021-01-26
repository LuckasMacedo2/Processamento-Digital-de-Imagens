
img = zeros(5, 5);
img(3,3) = 1;

Tam = 10;
w = 1/(Tam*Tam) * ones(Tam,Tam);

img_s = imfilter(img, w, 'symmetric')

img_r = imfilter(img, w, 'replicate')

img_c = imfilter(img, w, 'circular')