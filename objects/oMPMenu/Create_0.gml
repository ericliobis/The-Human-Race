/// @description Insert description here
// You can write your code in this editor

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

gui_margin = 32;
distoff = 1000;
title_distoff = -2000;
menu_x = 150;
menu_x_side = 1330;
menu_y = 425;
menu_y_bot = 953;
title_x = title_distoff;
title_x_target = gui_margin;
title_y = gui_margin*2;

menu_x_target = gui_width - gui_margin;

menu_speed = 45;
font = f_Menu_CharsMP;

font_record = f_Menu;
title_font = f_MenuTime;
menu_itemheight = font_get_size(f_Menu_CharsMP)*2;
menu_committed = -1;
numOfStyles = array_length_1d(i_GameVars.styles);
menu_control = true;

menu[7] = "Adventure Man";
menu[6] = "Adventure Girl";
menu[5] = "Ninja Guy";
menu[4] = "Ninja Girl";
menu[3] = "Knight";
menu[2] = "Santa";
menu[1] = "The Girl";
menu[0] = "The Boy";
title = "Character Select"
menu_cursor = [7,7,7,7];
menu_items = array_length_1d(menu);

sprites[7] = s_IJG_Run;
sprites[6] = s_AdvGirl_Run;
sprites[5] = s_NinjaGuy_Run;
sprites[4] = s_NinjaGirl_Run;
sprites[3] = s_Knight_Run;
sprites[2] = s_Santa_Run;
sprites[1] = s_TheGirl_Run;
sprites[0] = s_TheBoy_Run;

currentLevel = 0;
level_names = ["Lost Forest", "The Graveyard", "Desert Crossing", "Island Hoppers", "Mountain Climber", "Islands in the Sky", "Pyramid Panic", "Saw Factory"];
level_rooms = [OutAndBack, TheGraveyard, DesertCrossing, IslandHoppers, MountainClimber, IslandsInTheySky, PyramidPanic, SawFactory];
num_levels = array_length_1d(level_names);
//inst_char_sprite.sprite_index = sprites[menu_cursor];

players_active = [false,false,false,false];
players_committed = [false,false,false,false];
can_move_x = [true, true, true, true];
can_move_y = [true, true, true, true];

instance_char = [inst_p1_char, inst_p2_char, inst_p3_char, inst_p4_char];