/// @description Insert description here
// You can write your code in this editor
if(!i_GameVars.paused)
{
if(frame < ghostFrames)
{
	frameData = ghostData[| frame];
	x = frameData[? "x"];
	y = frameData[? "y"];
	image_xscale = frameData[? "xs"];
	image_yscale = frameData[? "ys"];
	sprite_index = frameData[? "sp"];
	image_index = frameData[? "img"];
	
	frame++;
}else{
	image_alpha = max(image_alpha-0.01,0);
	image_speed = 0;
	if(image_alpha ==0)
	{
		instance_destroy()
	}
}
}else{
	image_speed = 0;
}