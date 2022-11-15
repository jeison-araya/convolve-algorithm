%PACKAGES%
pkg load image

%FILTERS%
K = [-1 -1 -1;-1 8 -1;-1 -1 -1; 1 1 1 ]; # 3x4
SHARPEN = [0, -1, 0; -1, 5, -1; 0, -1, 0;];
BLUR = [0.0625, 0.125, 0.0625; 0.125,  0.25,  0.125; 0.0625, 0.125, 0.0625;];
OUTLINE = [-1, -1, -1; -1,  8, -1; -1, -1, -1];
SOBEL_H = [-1 -2 -1;0 0 0;1 2 1];
SOBEL_V = [-1 0 1;-2 0 2;-1 0 1];

B=[-1 -1 -1;-1 8 -1;-1 -1 -1];
%LOAD IMAGE%
A=imread('imagenes/baby_yoda.jpg');
figure
imshow(A);
title('Imagen Original');

A=im2double(A);
A=rgb2gray(A);

%APPLY FILTER%
C=convolve(A, K);
figure
imshow(C);
title('Imagen con filtro (utilizando convolve)');

C=conv2(A, K);
figure
imshow(C);
title('Imagen con filtro (utilizando conv2)');