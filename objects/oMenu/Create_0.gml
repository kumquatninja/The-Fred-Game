/// @desc GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width+200;
menu_y = gui_height - gui_margin; //+500;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; // lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

// menu array of strings
menu[2] = "New Game"; // better when declaring an array, to start with biggest variable
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;

// custom title
title_x = gui_width * 0.72;
title_y = gui_height * 0.5;
title_txt = "Fred Game";
title_col = c_white;