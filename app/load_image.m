function [img, img_name] = load_image(default_path)
    %REQUESTS AND LOADS IMAGE%
    img_name = uigetfile({"*.gif;*.png;*.jpg", "Supported Picture Formats"});

    img = imread(strcat(default_path, img_name));
endfunction
