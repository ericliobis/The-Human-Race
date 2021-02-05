/// @description Insert description here
// You can write your code in this editor

if(menu_control)
{
	for(i = 0;i<4;i++)
	{
		gp_control = i_GameVars.controller_num[i];
	if(gamepad_is_connected(gp_control))
	{

		x_dir = -gamepad_axis_value(gp_control,gp_axislv);
		y_dir = gamepad_axis_value(gp_control,gp_axislh);
		a_press = gamepad_button_check_pressed(gp_control, gp_face1);
		b_press = gamepad_button_check_pressed(gp_control, gp_face2);
		LB_press = gamepad_button_check_pressed(gp_control, gp_shoulderl);
		RB_press = gamepad_button_check_pressed(gp_control, gp_shoulderr);
		if(abs(x_dir)>0.6)
		{
			x_dir = abs(x_dir)/x_dir;
		}else{
			x_dir =0;
			can_move_x[i] = true;
		}
		
		if(abs(y_dir)>0.6)
		{
			y_dir = abs(y_dir)/y_dir;
		}else{
			y_dir = 0;
			can_move_y[i] = true;
		}
		if(players_active[i] && !players_committed[i])
		{
	if(x_dir <0 && can_move_x[i])
	{
		can_move_x[i] = false;
		menu_cursor[i]--;
		
		if(menu_cursor[i]<0) menu_cursor[i] = menu_items-1;
		instance_char[i].sprite_index = sprites[menu_cursor[i]];
	}
	if(x_dir>0 && can_move_x[i])
	{
		can_move_x[i] = false;
		menu_cursor[i]++;
		if(menu_cursor[i]>= menu_items) menu_cursor[i] = 0;
		instance_char[i].sprite_index = sprites[menu_cursor[i]];
	}
	
		if(y_dir < 0 && can_move_y[i])
	{
		can_move_y[i] = false;
		i_GameVars.playerMods[i]--;
		
		if(i_GameVars.playerMods[i]<0) i_GameVars.playerMods[i] = numOfStyles-1;
		
	}
	if(y_dir > 0 && can_move_y[i])
	{
		can_move_y[i] = false;
		i_GameVars.playerMods[i]++;
		if(i_GameVars.playerMods[i]>= numOfStyles) i_GameVars.playerMods[i] = 0;
	}
	if(LB_press)
	{
		currentLevel--
		if(currentLevel<0) currentLevel = num_levels-1;
		inst_mp.image_index = currentLevel;
	}
	if(RB_press)
	{
		currentLevel++
		if(currentLevel>=num_levels) currentLevel = 0;
		inst_mp.image_index = currentLevel;
	}
	if(b_press)
	{
		players_active[i] = false
	}
	if(a_press)
	{
		players_committed[i] = true;
	}
	}else if(players_committed[i])
	{
			if(b_press)
	{
		players_committed[i] = false
	}
	if(a_press)
	{
		check_valid = true;
		num_active = 0;
		for(ii=0;ii<4;ii++)
		{
			i_GameVars.playerSprite[ii] = menu_cursor[ii];
			if(players_active[ii] != players_committed[ii])
			{
				check_valid = false;

			}
							if(players_committed[ii])
				{
					num_active++;
				}
		}
		if(check_valid && num_active >0)
		{
			
					i_GameVars.sp = false;
		i_GameVars.mp = true;
		for(j=0;j<4;j++)
		{
			i_GameVars.active_player[j] = players_committed[j];
		}
		SlideTransition(TRANS_MODE.GOTO, level_rooms[currentLevel]);
		}
		
	}
	}else{
		
	if(a_press)
	{
		players_active[i] = true;
	}
	if(b_press)
	{
		SlideTransition(TRANS_MODE.GOTO, rMenu);
	}
	}
	}
	}
	//if all valid players are confirmed
	
	if(keyboard_check_pressed(vk_escape))
	{

		menu_control = false;
SlideTransition(TRANS_MODE.GOTO, rMenu);
}
}
