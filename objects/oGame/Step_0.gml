/// @description Insert description here
// You can write your code in this editor
if((global.mp_gameStart || !i_GameVars.mp) && !global.gameEnd)
{
	//check if the game has ended 
	if(i_GameVars.mp)
	{
		global.gameEnd =true;
		for(i=0;i<4;i++)
		{
			if(global.player_finished[i] != i_GameVars.active_player[i]) global.gameEnd = false;
		}
	}
	
	
if(keyboard_check_pressed(ord("R")) && i_GameVars.sp)
{
	SlideTransition(TRANS_MODE.GOTO, room);
}

if(global.start && !i_GameVars.paused)
{
	global.sp_timer++;
}

if(i_GameVars.paused)
{
	
	if(gamepad_is_connected(i_GameVars.controller_num[global.pausedplayer]))
	{
		x_dir = -gamepad_axis_value(i_GameVars.controller_num[global.pausedplayer],gp_axislh);
		y_dir = -gamepad_axis_value(i_GameVars.controller_num[global.pausedplayer],gp_axislv);
		a_press = gamepad_button_check_pressed(i_GameVars.controller_num[global.pausedplayer], gp_face1); 
		b_press = gamepad_button_check_pressed(i_GameVars.controller_num[global.pausedplayer], gp_face2); 
		escape_press = gamepad_button_check_pressed(i_GameVars.controller_num[global.pausedplayer], gp_start); 
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
		escape_press = keyboard_check_pressed(vk_escape);
	}
	
		if(y_dir < 0 && can_move_y)
	{
		can_move_y = false;
		menu_cursor++;
		if(menu_cursor>= pause_items_nums) menu_cursor = 0;
	}
	if(y_dir > 0 && can_move_y)
	{
		can_move_y = false;
		menu_cursor--;
		if(menu_cursor< 0) menu_cursor = pause_items_nums-1;
	}
	if(a_press)
	{
		switch(menu_cursor)
		{
			case 0:
				i_GameVars.paused = false;
				break;
			case 1:

				SlideTransition(TRANS_MODE.GOTO, room);
				break;
			case 2:
if(i_GameVars.sp && !tutorial)
{
				SlideTransition(TRANS_MODE.GOTO, rLevels);
}else if(tutorial){
	SlideTransition(TRANS_MODE.GOTO, rMenu);
}else {
	SlideTransition(TRANS_MODE.GOTO, rMultiplayer);
}
break;
			
		}
	}
	if(escape_press && break_)
	{
		i_GameVars.paused = false;
	}
	if(!escape_press)
	{
		break_ = true;
	}
}else{
	break_ = false;
}
}else if(i_GameVars.mp && !global.gameEnd){
	start_counter--;
	if(start_counter<1)
	{
		global.mp_gameStart = true
		for(i=0;i<4;i++)
		{
		global.player_control[i] = i_GameVars.active_player[i];
		}
	}
}