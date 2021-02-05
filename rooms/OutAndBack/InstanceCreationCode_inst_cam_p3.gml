if(i_GameVars.sp)
{
	instance_destroy();
}else
{
player_num_to_follow = 2;
	follow = inst_p3_OAB
	cam = view_camera[player_num_to_follow+1];

view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam)*0.5;
}