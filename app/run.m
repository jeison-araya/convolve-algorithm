%PACKAGES%
pkg load image

%LOAD IMAGE%
[img_selected, img_name] = load_image("imagenes/");
figure
imshow(img_selected);
title('Imagen Original');

%LOAD FILTER%
filter_selected = load_filter();

%PREPARE IMAGE%
img_selected = im2double(img_selected);
img_selected = rgb2gray(img_selected);

%APPLY FILTER (USING convolve)%
filtered_img = convolve(img_selected, filter_selected);
figure
imshow(filtered_img);
title('Imagen con filtro (utilizando convolve)');

%APPLY FILTER (USING conv2)%
filtered_img = conv2(img_selected, filter_selected);
figure
imshow(filtered_img);
title('Imagen con filtro (utilizando conv2)');

%SAVE IMAGE%
save_image(filtered_img, 'outputs/', img_name);
