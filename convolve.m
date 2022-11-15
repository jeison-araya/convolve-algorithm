function [convolved_matrix] = convolve (img, kernel)
    [img_rows, img_cols] = size(img);
    [kernel_rows, kernel_cols] = size(kernel);

    [rows] = calculate_filtered_img_size(img_rows, kernel_rows);
    [cols] = calculate_filtered_img_size(img_cols, kernel_cols);

    convolved_matrix = zeros (rows, cols);

    for row = 1:rows

        for col = 1:cols
            mat = img(row:row + kernel_rows -1, col:col + kernel_cols -1);

            convolved_matrix(row, col) = sum(sum(mat .* kernel));
        endfor

    endfor

    convolved_matrix;
endfunction
