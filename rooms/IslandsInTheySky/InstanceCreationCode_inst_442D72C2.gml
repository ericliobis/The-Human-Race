player_num_to_follow = 0;
follow = inst_p1_IITS;

cam = view_camera[player_num_to_follow];

view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam)*0.5;
w = display_get_gui_width();
h = display_get_gui_height();
if(i_GameVars.mp)
{
	cam = view_camera[player_num_to_follow+1];
	view_enabled = true
	for(i=0;i<4;i++)
	{
		_id = i+1;



view_visible[_id] = true;

			
	}
	view_visible[0] = false;


}