original = imread('patao.jpg');

%imshow(original)

%imshow(azuis);

vermelhos = (original(:,:,1) > 0) .* (original(:,:,2) < 75) .* (original(:,:,3) < 75); %vermelhos
amarelos = (original(:,:,1) > 170) .* (original(:,:,2) > 170) .* (original(:,:,3) < 50); %amarelos
azuis = (original(:,:,1) < 90) .* (original(:,:,2) > 0) .* (original(:,:,3) > 0); %azuis
verdes = (original(:,:,1) > 170) .* (original(:,:,2) > 170) .* (original(:,:,3) < 50); %amarelos

pato =  (original(:,:,1) > 230) .* (original(:,:,1) < 255) .* (original(:,:,2) > 165) .* (original(:,:,2) < 250) .* (original(:,:,3) > 55) .* (original(:,:,3) < 70);

orig_double = double(original);

imshow(pato .* orig_double);