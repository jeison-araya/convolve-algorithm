%PACKAGES%
pkg load image

%FILTERS%
SHARPEN = [0, -1, 0; -1, 5, -1; 0, -1, 0;];
BLUR = [0.0625, 0.125, 0.0625; 0.125,  0.25,  0.125; 0.0625, 0.125, 0.0625;];
OUTLINE = [-1, -1, -1; -1,  8, -1; -1, -1, -1];
SOBEL_H = [-1 -2 -1;0 0 0;1 2 1];
SOBEL_V = [-1 0 1;-2 0 2;-1 0 1];
%LOAD IMAGE%
A=imread('imagenes\cat.jpg');
figure
imshow(A)
title('Imagen Original')
A=double(A);


%APPLY FILTER%
C1=convolve(A,SOBEL_H);
C2=convolve(A,SOBEL_V);

C=sqrt(C1.^2+C2.^2);
C=uint8(C);

figure
imshow(C);
title('Imagen con filtro SOBEL');

