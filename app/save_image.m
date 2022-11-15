function [] = save_image(image, target_dir, img_name)
    choice = menu("Do you want to save the image?", "1. YES", "2. NO");

    if (choice == 1)
        if (exist(target_dir) == 0)
            mkdir(target_dir)
        endif
        imwrite(image, strcat(target_dir, img_name));
    endif

endfunction
