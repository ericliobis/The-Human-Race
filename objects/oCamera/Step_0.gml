/// @description Insert description here
// You can write your code in this editor
if(i_GameVars.mp)
{
}
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x+= floor((xTo - x)/scrollSpeed);
y+= floor((yTo - y)/scrollSpeed);
x = clamp(x,view_w_half, room_width-view_w_half)
y = clamp(y,view_h_half, room_height-view_h_half)
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
if(room != SawFactory)
{
layer_x(BG_scroll,x/2);
layer_y(BG_scroll,y-offset);

}