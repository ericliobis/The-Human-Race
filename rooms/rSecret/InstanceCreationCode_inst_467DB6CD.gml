player_num_to_follow = 0;
follow = inst_p1_sec;

cam = view_camera[player_num_to_follow];

view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam)*0.5;

if(i_GameVars.mp)
{
	cam = view_camera[player_num_to_follow+1];
	view_enabled = true
		view_visible[2] = true;
		view_visible[1] = true;
				view_visible[3] = true;
		view_visible[4] = true;
	view_visible[0] = false;


}