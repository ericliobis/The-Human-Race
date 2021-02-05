/// @description Insert description here
// You can write your code in this editor
playerNum = 3;
if(i_GameVars.sp)
{
	instance_destroy();
}else
{
	image_blend = c_green;
	initial_blend = c_green;
}
// Inherit the parent event
event_inherited();

