/// @description Insert description here
// You can write your code in this editor
if(image_alpha<1 && !intro_holding)
{
	image_alpha += intro_speed/200
	
	
}else{
	intro_holding = true;
}
if(intro_holding && intro_timer <intro_hold)
{
	intro_timer++
	
}else if(intro_holding && intro_timer >=intro_hold)
{
	image_alpha -= intro_speed/100
}

if(intro_holding && image_alpha<=0)
{
	room_goto(rMenu);
}