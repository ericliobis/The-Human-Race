/// @description Insert description here
// You can write your code in this editor
x += x_speed;
dummy = instance_create_layer(x,y, "Effects",oFirework)
with(dummy)
{

red1 = 255;
green1 = 255;
blue1 = 0;

image_blend = make_colour_rgb(red1,green1,blue1);
}
for(char=0;char<4;char++)
{
playerCol = instance_place(x,y, player_types[char])
if(playerCol != noone && !playerCol.dead)
{
if(!playerCol.stunned)
{
	FireWork(playerCol.x,playerCol.y-playerCol.sprite_height/2,"zap");
}
playerCol.image_blend = c_gray; 
playerCol.stunned = true;

playerCol.alarm[5] = 90;
}
}
if(x>room_width || x<0)
{
	instance_destroy();
}