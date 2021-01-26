function hist = histograma(img)
    [i j k] = size(img);
    
    hist = zeros(256, 1);

    index = 1;
    
    img = im2uint8(img);
    
    for x = 1 : i
       for y = 1 : j
           index = (img(x, y, :)) + 1;
           hist(index) = hist(index) + 1;
       end
    end
    
    bar( 0:255, hist, 'histc');
end
