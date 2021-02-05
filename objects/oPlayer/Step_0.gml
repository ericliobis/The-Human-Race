/// @description Insert description here
// You can write your code in this editor
var char_side;
if(global.player_control[playerNum])
{
if(gamepad_is_connected(i_GameVars.controller_num[playerNum]))
{
	controller = true;
}
char_left = x-left;
char_right = x+right;
char_top = y-top;
char_bottom = y+bottom;
if(!controller)
{
key_pause = keyboard_check_pressed(vk_escape);

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right)
key_dir =  key_right - key_left; 
key_space = keyboard_check_pressed(vk_space); 
key_jump_released = keyboard_check_released(vk_space);
key_item = keyboard_check_pressed(ord("W"));
key_leftdash = keyboard_check_pressed(ord("Q"));
		key_rightdash = keyboard_check_pressed(ord("E"));
		key_walljump = keyboard_check_pressed(ord("W"));
}else{
	if(abs(gamepad_axis_value(i_GameVars.controller_num[playerNum],gp_axislh))>0.2)
	{
		if(gamepad_axis_value(i_GameVars.controller_num[playerNum],gp_axislh)>0)
		{
		key_right = 1;
		key_left = 0;
		}else{
		key_left = 1;
		key_right = 0;
		}

	}else{
		key_left = 0;
		key_right = 0;
		
	}
	key_dir =  key_right - key_left; 
		key_space = gamepad_button_check_pressed(i_GameVars.controller_num[playerNum], gp_face1);
		key_jump_released = gamepad_button_check_released(i_GameVars.controller_num[playerNum], gp_face1);
		key_pause = gamepad_button_check_pressed(i_GameVars.controller_num[playerNum], gp_start);
		key_item = gamepad_button_check_pressed(i_GameVars.controller_num[playerNum], gp_face2) 
		key_leftdash = gamepad_button_check_pressed(i_GameVars.controller_num[playerNum], gp_shoulderlb) 
		key_rightdash = gamepad_button_check_pressed(i_GameVars.controller_num[playerNum], gp_shoulderrb);
		key_walljump = gamepad_button_check_pressed(i_GameVars.controller_num[playerNum], gp_shoulderr) - gamepad_button_check_pressed(i_GameVars.controller_num[playerNum], gp_shoulderl);
}

if(!i_GameVars.paused)
{
	
if(key_pause)
{
	i_GameVars.paused = true;
	global.pausedplayer = playerNum;
}
if(!dead && !stunned)
{

}else{
	key_left = 0;
key_right = 0;
key_dir =  key_right - key_left; 
key_space = 0;
key_jump_released = 0;
key_item = 0;
key_walljump = 0;
key_rightdash=0;
key_leftdash=0;
}
if(getting_item)
{
	current_item= floor(random(6)+1);
}

if(key_item && current_item != 0 && !active_item && !getting_item)
{
	switch (current_item)
	{
		case 1: //saw
		saw = instance_create_layer(x,y, "Effects", oSawSpawnable);
				saw.image_xscale = 0.2;
		saw.image_yscale = 0.2;
		show_debug_message("Start: " +string(saw.x) + " Saw W: " + string(saw.sprite_width)+ "  :  Sprite W: "+ string(sprite_width));
		saw.x -= sign(image_xscale)*(abs(saw.sprite_width)/2 + abs(sprite_width)/2 + 1)
		show_debug_message("Finish: " +string(saw.x));
		saw.y -= sprite_height/2;
current_item = 0;
		break;
		case 2: //superSpeed
		active_item = true;
		walksp = boostspeed;
		alarm[3] = 60*4;
		break;
		case 3: //superJump
		active_item = true;
		vsp_max *= 1.5;
		vsp = -vsp_max;
		alarm[4] = 60*1;
		break;
		case 4: //invincible
		active_item = true;
		invincible = true;
		alarm[2] = 60*4;
		break;
				case 5: //item box
		saw = instance_create_layer(x,y, "Effects", oFakeItemBox);
				saw.x -= sign(image_xscale)*(abs(saw.sprite_width)/2 + abs(sprite_width)/2 + 1)
current_item = 0;
break;
				case 6: //Stun Laser
alarm[6] = 1;
current_item = 0;
break;
		
	}
	
}


walljumpdelay = max(walljumpdelay-1,0);
dashCounter = max(dashCounter-1,0);
if(walljumpdelay==0)
{
hsp += key_dir*hsp_acc;

if(key_dir == 0)
{
var hsp_fric_final = hsp_fric_ground;
	if(!onFloor) hsp_fric_final = hsp_fric_air;
	hsp = Approach(hsp, 0, hsp_fric_final);
}
hsp = clamp(hsp, -walksp, walksp);
}
if(dashCounter>0 && walljumpdelay ==1)
{
	hsp=0;
}else if(dashCounter>0 && walljumpdelay >0)
{
if(hsp>0)
{
	side = char_left
}else{
	side = char_right
}

instance_create_layer(side,char_top + sprite_height/2, "Effects",oDust)
instance_create_layer(side+10,char_top + sprite_height/2, "Effects",oDust)
instance_create_layer(side-10,char_top + sprite_height/2, "Effects",oDust)
}
//Wall Jump
//onWall ==key_dir &&
if( onWall !=0 && !onFloor &&abs(onWall) == abs(key_walljump))
{
	walljumpdelay=walljumpdelay_max;
	hsp = -onWall*hsp_wjump;
	vsp = -vsp_wjump;
	hsp_frac = 0;
	vsp_frac = 0;
}

if((key_leftdash ^^ key_rightdash) && walljumpdelay ==0 && dashCounter ==0)
{
	dashCounter=dashDelay2;
	hsp = (key_rightdash-key_leftdash)*hsp_dash
	walljumpdelay=dashDelay;
		hsp_frac = 0;
	vsp_frac = 0;
	startdash_x=x;
	startdash_y=y;
}

var grav_final = grav;
var vsp_max_final = vsp_max;

if(onWall ==key_dir && onWall !=0 && vsp>0)
{
	grav_final = grav_wall;
	vsp_max_final = vsp_max_wall;
}
	

//Vertical Movement
vsp = (vsp + grav_final);

if(jumpbuffer >0)
{
	jumpbuffer--;
	if(key_space)
	{
		dashCounter = 0;
		jumpbuffer =0;
		vsp = -jumpheight;
		vsp_frac = 0;
		jumping = true;
		jump_counter = 0;
	}
}
if(jumping && key_jump_released)
{
	jump_counter = jump_thres;
}
if(jumping && jump_counter<jump_thres)
{
	jump_counter++;
	addSpeed = -varSpeed;

}else{
	addSpeed = 0;
}
vsp += addSpeed;
vsp = clamp(vsp, -vsp_max_final, vsp_max_final);

hsp+= hsp_frac;
vsp += vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;


//Horizontal Collision

if(hsp>0)	char_side = char_right; else char_side = char_left;

if(tilemap_get_at_pixel(collisionMap, char_side+hsp, char_top) != 0 || tilemap_get_at_pixel(collisionMap, char_side+hsp, char_bottom) != 0 || tilemap_get_at_pixel(collisionMap, char_side+hsp, (char_top+top/3)) != 0 || tilemap_get_at_pixel(collisionMap, char_side+hsp, (char_top+2*top/3)) != 0 )
{

	if(hsp>0) x = char_side - (char_side mod tileTestSize) + (tileTestSize-1)-(right);
	else x = char_side - (char_side mod tileTestSize) -(char_side-x);
	hsp = 0;
	hsp_frac = 0;

}
x+=hsp;
char_left = x-left;
char_right = x+right;
//Vertical Collision
if(vsp>0)	char_side = char_bottom; else char_side = char_top;

if(tilemap_get_at_pixel(collisionMap, char_right,char_side+vsp) != 0 || tilemap_get_at_pixel(collisionMap, char_left, char_side+vsp) != 0 || tilemap_get_at_pixel(collisionMap, x, char_side+vsp) != 0 )
{
	if(vsp>0)
	{
		y = char_side - (char_side mod tileTestSize) + (tileTestSize-1)-(char_side-y);
	}else
	{
		y = char_side - (char_side mod tileTestSize) -(char_side-y);
	}
	vsp=0;
	vsp_frac = 0;
}

y+= vsp;

//check if on ground
char_left = x-left;
char_right = x+right;
char_top = y-top;
char_bottom = y+bottom;
onFloor = tilemap_get_at_pixel(collisionMap, x, char_bottom+1) || tilemap_get_at_pixel(collisionMap, char_left, char_bottom+1) ||tilemap_get_at_pixel(collisionMap, char_right, char_bottom+1);
onWallLeft = tilemap_get_at_pixel(collisionMap, char_left-1, char_bottom) || tilemap_get_at_pixel(collisionMap, char_left-1, char_top)  || tilemap_get_at_pixel(collisionMap, char_left-1, (char_top+top/3)) || tilemap_get_at_pixel(collisionMap, char_left-1, (char_top+2*top/3));
onWallRight = tilemap_get_at_pixel(collisionMap, char_right+1, char_bottom) || tilemap_get_at_pixel(collisionMap, char_right+1, char_top)  || tilemap_get_at_pixel(collisionMap, char_right+1, (char_top+top/3)) || tilemap_get_at_pixel(collisionMap, char_right+1, (char_top+2*top/3));
onWall = onWallRight - onWallLeft;
if(onFloor)
{
	jumpbuffer = 8;
	jumping = false;

	
}



//Animation
//running/idle
//horizontal
if(onFloor && !dead)
{
	if(hsp!=0)
	{
		sprite_index = i_GameVars.runSprites[i_GameVars.playerSprite[playerNum]];
	image_speed = 1;
	image_xscale = abs(image_xscale)*sign(hsp);

	}else{
		sprite_index = i_GameVars.idleSprites[i_GameVars.playerSprite[playerNum]];
	image_speed = 1;
	}
}		
	
//jumping
if(!onFloor &&!dead)
{
	image_speed = 1;
	if(hsp!=0)
	{
		image_xscale = abs(image_xscale)*sign(hsp);
	}
if(onWall ==key_dir && onWall !=0)
{
	var side = char_left;
	if(onWall==1) side = char_right;
	
	dust++;
	if((dust > 2) && (vsp>0)) with(instance_create_layer(side,char_top, "Effects",oDust))
	{
		other.dust = 0;
		hspeed = -other.onWall*0.5;
	}
}else
{
	dust = 0;
}
	if(vsp<0)
	{
		if(sprite_index != i_GameVars.jumpUpSprites[i_GameVars.playerSprite[playerNum]])
		{
			image_index = 0;
	sprite_index = i_GameVars.jumpUpSprites[i_GameVars.playerSprite[playerNum]];
		}
	if(image_index == image_number-1)
	{
		image_speed = 0;
	}
	}else{
		if(sprite_index != i_GameVars.jumpDownSprites[i_GameVars.playerSprite[playerNum]])
		{
			image_index = 0;
sprite_index = i_GameVars.jumpDownSprites[i_GameVars.playerSprite[playerNum]];
		}
			if(image_index == image_number-1)
	{

		image_speed = 0;
	}
	}
}
if(invincible)
{
	red1 = round(random(1))*255;
green1 = round(random(1))*255;
blue1 = round(random(1))*255;

image_blend = make_colour_rgb(red1,green1,blue1);
}else if(i_GameVars.sp && !stunned)
{
	image_blend = c_white;
}else if(i_GameVars.mp&& !stunned)
{
	image_blend = initial_blend;
}
	
//check if player has died

inDeathZone = tilemap_get_at_pixel(deathMap, char_left, char_bottom) || tilemap_get_at_pixel(deathMap, char_left, char_top)  || tilemap_get_at_pixel(deathMap, char_left, (char_top+top/3)) || tilemap_get_at_pixel(deathMap, char_left, (char_top+2*top/3))|| tilemap_get_at_pixel(deathMap, char_right, char_bottom) || tilemap_get_at_pixel(deathMap, char_right, char_top)  || tilemap_get_at_pixel(deathMap, char_right, (char_top+top/3)) || tilemap_get_at_pixel(deathMap, char_right, (char_top+2*top/3));
inDeathFromAboveZone = tilemap_get_at_pixel(dFAMap, char_left, char_bottom) || tilemap_get_at_pixel(dFAMap, char_left, char_top)  || tilemap_get_at_pixel(dFAMap, char_left, (char_top+top/3)) || tilemap_get_at_pixel(dFAMap, char_left, (char_top+2*top/3))|| tilemap_get_at_pixel(dFAMap, char_right, char_bottom) || tilemap_get_at_pixel(dFAMap, char_right, char_top)  || tilemap_get_at_pixel(dFAMap, char_right, (char_top+top/3)) || tilemap_get_at_pixel(dFAMap, char_right, (char_top+2*top/3));
inSawDeathZone = place_meeting(x,y, oSaw);
inSawDeathZone2 = place_meeting(x,y, oSawSpawnable) || place_meeting(x,y, oFakeItemBox);
SawDeath = instance_place(x,y, oSawSpawnable);
ItemBoxDeath = instance_place(x,y, oFakeItemBox);
if((inDeathZone|| (inDeathFromAboveZone && vsp>0)|| inSawDeathZone || inSawDeathZone2) && !dead && !invincible)
{
	instance_destroy(SawDeath);
	instance_destroy(ItemBoxDeath);
	FireWork(x,y,"blood");
	dead = true;
	current_item = 0;
	alarm[0] = 60;
	image_index = 0;
	image_speed = 1;
	sprite_index = i_GameVars.dieSprites[i_GameVars.playerSprite[playerNum]];
}
if(dead) {
			if(image_index == image_number-1)
	{
		image_speed = 0;
		
	}
}
}else{
	image_speed = 0;
	for(i=0;i<6;i++)
	{
	if(alarm[i]>0)
	{
		alarm[i]++;
	}
	}
		

}
}else if (global.player_finished[playerNum])
{
	image_alpha -= 0.05;
	if(image_alpha <0.05)
	{
		image_alpha = 0;
	}
}
 if(current_lap > i_GameVars.laps)
 {
	 current_lap--;
	global.player_control[playerNum] = false;
	global.player_finished[playerNum] = true;
	global.places[global.place] = playerNum;
	global.place++;
 }
 
 
 if(global.gameEnd && !global.goingHome)
{
	if(gamepad_button_check_pressed(i_GameVars.controller_num[playerNum], gp_face1))
	{
		global.goingHome = true;
		SlideTransition(TRANS_MODE.GOTO, rMultiplayer);
	}
	
}