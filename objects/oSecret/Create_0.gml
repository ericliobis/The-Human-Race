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
font = f_Menu1;
font_record = f_MenuTime;
title_font = f_MenuLS;
menu_itemheight = font_get_size(f_Menu);
menu_committed = -1;

menu_control = true;

title = "Rescue Ralph"

menu_items_x = 4;
menu_items_y = 2;
menu_cursor_x = oGameVars.level_x;
menu_cursor_y = oGameVars.level_y;
w = display_get_gui_width();
h = display_get_gui_height();

can_move_x = true;
can_move_y = true;