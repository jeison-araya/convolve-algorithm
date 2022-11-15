function [num_pixels] = calculate_filtered_img_size (img_size, kernel_size)
    %Calculates the size of the filtered img%
    num_pixels = 0;

    for i = 0:img_size
        added = i + kernel_size;

        if (added <= img_size)
            num_pixels += 1;
        endif

    endfor

    num_pixels;
endfunction
