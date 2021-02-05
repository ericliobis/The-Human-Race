/// @description Insert description here
// You can write your code in this editor
if(view_current == 0)
{
	if(room != SawFactory)
{
layer_x(BG_scroll,x/2);
layer_y(BG_scroll,y-offset);

}
}


for(i=0;i<4;i++)
{
if(view_current == i+1 && player_num_to_follow == i && i_GameVars.active_player[i])
{
	if(room != SawFactory)
	{
	layer_x(BG_scroll,x/2);
layer_y(BG_scroll,y-offset);
	}
	
for(ii=0;ii< instance_number(oCheckPointFlag);ii++)
{
flag = instance_find(oCheckPointFlag,ii)
if(global.players[i].checkPoints[flag.cpNumber] == true)
{
flag.image_index = 1;
}else{
	flag.image_index = 0;
}


}
}
//show_debug_message("view: " + string(view_current) + "  :  " + string(i) + "  :  " + string(global.players[i].depth));
}
if(view_current == 1)
{
	layer_depth("Player1", topLayer)
	layer_depth("Player2", topLayer+1)
	layer_depth("Player3", topLayer+2)
	layer_depth("Player4", topLayer+3)

}
	if(view_current == 2)
{
		layer_depth("Player1", topLayer+1)
	layer_depth("Player2", topLayer)
	layer_depth("Player3", topLayer+2)
	layer_depth("Player4", topLayer+3)
}
if(view_current == 3)
{
		layer_depth("Player1", topLayer+1)
	layer_depth("Player2", topLayer+2)
	layer_depth("Player3", topLayer)
	layer_depth("Player4", topLayer+3)
}
if(view_current == 4)
{
		layer_depth("Player1", topLayer+1)
	layer_depth("Player2", topLayer+2)
	layer_depth("Player3", topLayer+3)
	layer_depth("Player4", topLayer)
}