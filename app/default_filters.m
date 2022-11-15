function [filters] = default_filters()
    %CREATES A STRUCTURE WITH DEFAULT FILTERS%
    filters = struct();

    filters.SHARPEN = [0, -1, 0; -1, 5, -1; 0, -1, 0; ];
    filters.BLUR = [0.0625, 0.125, 0.0625; 0.125, 0.25, 0.125; 0.0625, 0.125, 0.0625; ];
    filters.OUTLINE = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
    filters.SOBEL = [-1 -2 -1; 0 0 0; 1 2 1];
    filters.SOBEL_V = [-1 0 1; -2 0 2; -1 0 1];

    filters;
endfunction
