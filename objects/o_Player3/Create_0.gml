/// @description Insert description here
// You can write your code in this editor
playerNum = 2;
if(i_GameVars.sp)
{
	instance_destroy();
}else
{
	image_blend = c_yellow;
	initial_blend = c_yellow;
}
// Inherit the parent event
event_inherited();

