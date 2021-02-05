/// @description Insert description here
// You can write your code in this editor

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

gui_margin = 32;
distoff = 1000;
title_distoff = -2000;
menu_x = gui_width+distoff;
title_x = title_distoff;
title_x_target = gui_margin;
title_y = gui_margin*2;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;

menu_speed = 45;
font = f_Menu;
title_font = f_MenuT;
menu_itemheight = font_get_size(f_Menu);
menu_committed = -1;

menu_control = true;

menu[3] = "Single Player";
menu[2] = "Multiplayer";
menu[1] = "How To Play";
menu[0] = "Quit";
title = "The Human Race"
menu_items = array_length_1d(menu)
menu_cursor = menu_items - 1;

can_move_x = true;
can_move_y = true;
//create all the camera

