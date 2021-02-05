/// @description Insert description here
// You can write your code in this editor

if(menu_control)
{
	if(gamepad_is_connected(0))
	{
		x_dir = -gamepad_axis_value(0,gp_axislh);
		y_dir = gamepad_axis_value(0,gp_axislv);
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
		menu_cursor_y--;
		if(menu_cursor_y<0) menu_cursor_y = menu_items_y-1;
	}
	if(y_dir<0 && can_move_y)
	{
		can_move_y = false;
		menu_cursor_y++;
		if(menu_cursor_y>= menu_items_y) menu_cursor_y = 0;
	}
		if(x_dir > 0&& can_move_x)
	{
		can_move_x = false;
		menu_cursor_x--;
		if(menu_cursor_x<0) menu_cursor_x = menu_items_x-1;
	}
	if( x_dir <0&& can_move_x)
	{
		can_move_x = false;
		menu_cursor_x++;
		if(menu_cursor_x>= menu_items_x) menu_cursor_x = 0;
	}

	if(a_press)
	{

		menu_control = false;
		i_GameVars.level_x = menu_cursor_x;
i_GameVars.level_y = menu_cursor_y;
SlideTransition(TRANS_MODE.GOTO, rCharacterSelect);
}
	if(b_press)
	{

		menu_control = false;
		SlideTransition(TRANS_MODE.GOTO, rMenu);
}
}
