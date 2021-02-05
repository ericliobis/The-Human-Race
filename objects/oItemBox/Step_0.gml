/// @description Insert description here
// You can write your code in this editor
for(char=0;char<4;char++)
{
playerCol = instance_place(x,y, player_types[char])
if(playerCol != noone && !playerCol.dead && playerCol.current_item == 0)
{
	playerCol.getting_item = true;
	playerCol.alarm[1] = 2*60;
}
}