function [filter_selected] = load_filter()
    %CREATES A MENU WITH DEFAULT FILTERS%
    filter_selected = [];
    choice = menu("Select filter", "1. SHARPEN", "2. BLUR", "3. OUTLINE", "4. SOBEL", "5. CUSTOM");

    switch (choice)
        case 1
            filter_selected = default_filters.SHARPEN;
        case 2
            filter_selected = default_filters.BLUR;
        case 3
            filter_selected = default_filters.OUTLINE;
        case 4
            filter_selected = default_filters.SOBEL;
        otherwise
            [filter_selected] = input("Add yout custom filter");
    endswitch

endfunction
