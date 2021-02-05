/// @description stun barrage
// You can write your code in this editor
if(stuns>0)
{
			saw = instance_create_layer(x,y, "Effects", oLaser);
	
				saw.x += sign(image_xscale)*(abs(saw.sprite_width)/2 + abs(sprite_width)/2 + 1)
				saw.y -= sprite_height/2;
				saw.x_speed *= sign(image_xscale);
				stuns--;
				alarm[6] = 15
}else{
	stuns = 3;
}
