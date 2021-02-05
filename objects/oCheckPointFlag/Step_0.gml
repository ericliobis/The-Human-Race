/// @description Insert description here
// You can write your code in this editor
for(char=0;char<4;char++)
{
playerCol = instance_place(x,y, player_types[char])
if(playerCol != noone && !playerCol.checkPoints[cpNumber] && !playerCol.dead)
	{
		playerCol.spawn_point_x = x;
		playerCol.spawn_point_y = y;
playerCol.checkPoints[cpNumber] = true;
FireWork(x,y, "FW");
image_index = 1;
	}
}