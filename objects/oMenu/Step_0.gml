/// @description Insert description here
// You can write your code in this editor
menu_x += (menu_x_target - menu_x)/menu_speed;
title_x += (title_x_target - title_x)/menu_speed;
if(menu_control)
{
	if(gamepad_is_connected(0))
	{
		x_dir = -gamepad_axis_value(0,gp_axislh);
		y_dir = -gamepad_axis_value(0,gp_axislv);
		a_press = gamepad_button_check_pressed(0, gp_face1); 
		b_press = gamepad_button_check_pressed(0, gp_face2); 
				if(abs(x_dir)>0.6)
		{
			x_dir = abs(x_dir)/x_dir;
		}else{
			x_dir =0;
			can_move_x = true;
		}
		
		if(abs(y_dir)>0.6)
		{
			y_dir = abs(y_dir)/y_dir;
		}else{
			y_dir = 0;
			can_move_y = true;
		}
		
	}else{
		y_dir = keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
		x_dir = keyboard_check_pressed(vk_left) - keyboard_check_pressed(vk_right);
		can_move_x = true;
		can_move_y = true;
		a_press = keyboard_check_pressed(vk_enter);
		b_press = keyboard_check_pressed(vk_escape);
	}
	if(y_dir>0 && can_move_y)
	{
		can_move_y = false;
		menu_cursor++;
		if(menu_cursor>= menu_items) menu_cursor = 0;
	}
	if(y_dir<0 && can_move_y)
	{
		can_move_y = false;
		menu_cursor--;
		if(menu_cursor< 0) menu_cursor = menu_items-1;
	}
	if(a_press)
	{
		menu_x_target = gui_width + distoff;
		title_x_target = title_distoff;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_x > gui_width+distoff*3/4) && (menu_committed != -1)
{
	switch(menu_committed)
	{
		case 3: default:
		SlideTransition(TRANS_MODE.GOTO, rLevels);
		break;
		case 2: 
		SlideTransition(TRANS_MODE.GOTO, rMultiplayer);
		break;
		case 1: 
		SlideTransition(TRANS_MODE.GOTO, Tutorial);
		i_GameVars.sp = true;
		i_GameVars.mp = false;
		i_GameVars.playerSprite[0] = 7;
		break;
				case 0: 
		game_end();
		break;
	}
}