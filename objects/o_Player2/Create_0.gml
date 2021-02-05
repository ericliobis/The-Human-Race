/// @description Insert description here
// You can write your code in this editor
playerNum = 1;
if(i_GameVars.sp)
{
	instance_destroy();
}else
{
	image_blend = c_blue;
	initial_blend = c_blue;
}
// Inherit the parent event
event_inherited();

