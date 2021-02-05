/// @description Insert description here
// You can write your code in this editor

playerCol = instance_place(x,y, oPlayer)
if(playerCol != noone && !instance_exists(oText))
{

current_text = instance_create_layer(x,y - 64, "Effects", oText);

 with(current_text)
 {
	text = other.text; 
	length = string_length(text);
 }
}else if(current_text != noone && playerCol == noone)
{
	instance_destroy(current_text);
	current_text = noone;
}
	
	