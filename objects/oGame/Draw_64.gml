/// @description Insert description here
// You can write your code in this editor

if(i_GameVars.sp && !tutorial)
{
	DrawSetText(c_black, f_game, fa_right, fa_top);
	draw_text_outlined(RES_W-10, 12, c_black, c_white, "Timer: "+ string_format(global.sp_timer/60,5,2));
	DrawSetText(c_black, f_game, fa_center, fa_top);
	if(global.bt[0] != "None")
	{
	draw_text_outlined(RES_W/2, 12, c_black, c_white, "Best Time: "+ string_format(i_GameVars.records[i_GameVars.level_x, i_GameVars.level_y]/60,5,2));
	}else{
		draw_text_outlined(RES_W/2, 12, c_black, c_white, "Best Time: "+ (i_GameVars.records[i_GameVars.level_x, i_GameVars.level_y]));
	}
	DrawSetText(c_black, f_game, fa_left, fa_top);
	playerCPs[0] = CountCPs(playerName[0].checkPoints)

	draw_text_outlined(10, 12, c_black, c_white, "Checkpoints: "+ string(playerCPs[0]) + "/" + string(array_length_1d(playerName[0].checkPoints)));
}else if(i_GameVars.mp && global.mp_gameStart && !global.gameEnd)
{
	draw_set_color(c_black);
	draw_set_alpha(1);
	size_rec = 10
	draw_rectangle(w/2-size_rec,0,w/2+size_rec, h,false);
	draw_rectangle(0,h/2 - size_rec,w, h/2+size_rec,false);
draw_set_font(font_mp);
for(i=0;i<4;i++)
{
	if(i_GameVars.active_player[i])
	{
		
	x1 = (i mod 2)*w/2+w/8;
	x2 = (i mod 2)*w/2+w*3/8;
	y1 = floor(i/2)*h/2 + 50;
	y2 = (floor(i/2)+1)*(h/2) - 50;
	lap_txt = "Laps: " + string(playerName[i].current_lap) + "/" + string(i_GameVars.laps);
	playerCPs[i] = CountCPs(playerName[i].checkPoints)
	cp_txt = "Checkpoints: " + string(playerCPs[i]) + "/" + string(array_length_1d(playerName[i].checkPoints));
	item_txt = "Item: " + string(i_GameVars.items[playerName[i].current_item]);
	draw_set_valign(fa_center);
	draw_text_outlined(x1, y1, c_black, c_white, lap_txt);
	draw_text_outlined(x2, y1, c_black, c_white, cp_txt);
	draw_set_halign(fa_left);
	x1 = (i mod 2)*w/2+10;
	draw_text_outlined(x1, y2, c_black, c_white, item_txt);
	draw_set_halign(fa_center);
	}else{
		draw_set_color(c_black)
		x1 = (i mod 2)*w/2;
		y1 = floor(i/2)*h/2 ;
		draw_rectangle(x1,y1,x1+w/2, y1+h/2, false);
	}
}
}else if(i_GameVars.mp && !global.mp_gameStart && !global.gameEnd)
{
		for(i=0;i<4;i++)
{
	if(i_GameVars.active_player[i])
	{

	}else{
		draw_set_color(c_black)
		x1 = (i mod 2)*w/2;
		y1 = floor(i/2)*h/2 ;
		draw_rectangle(x1,y1,x1+w/2, y1+h/2, false);
	}
}
	if(start_counter<=60)
	{
		txt = "GO";
	}else{
		txt = string(ceil(start_counter/60)-1)
	}
	draw_set_font(title_font);
	draw_text_outlined(w/2,h/2, c_black, c_white,txt);

}
if(global.gameEnd && i_GameVars.mp)
{
			for(i=0;i<4;i++)
{
	if(i_GameVars.active_player[i])
	{

	}else{
		draw_set_color(c_black)
		x1 = (i mod 2)*w/2;
		y1 = floor(i/2)*h/2 ;
		draw_rectangle(x1,y1,x1+w/2, y1+h/2, false);
	}
}
	draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0,0,w, h,false);
draw_set_alpha(1);
draw_set_font(title_font);
draw_text_outlined(w/2, h/7, c_black, c_white, "Results")

if(global.places[0] != -1)
{
	draw_set_font(font_1st);
	draw_text_outlined(w/2, 5*h/14, c_black, c_white, "1st - " + string(i_GameVars.names[global.places[0]]));
}

if(global.places[1] != -1)
{
	draw_set_font(font_2nd);
	draw_text_outlined(w/2, 7*h/14, c_black, c_white, "2nd - " + string(i_GameVars.names[global.places[1]]));
}

if(global.places[2] != -1)
{
	draw_set_font(font_3rd);
	draw_text_outlined(w/2, 8*h/14, c_black, c_white, "3rd - " + string(i_GameVars.names[global.places[2]]));
}

if(global.places[3] != -1)
{
	draw_set_font(font_4th);
	draw_text_outlined(w/2, 9*h/14, c_black, c_white, "4th - " + string(i_GameVars.names[global.places[3]]));
}
draw_text_outlined(w/2, 6*h/7, c_black, c_white, "Press 'a' to continue")
}
//paused
if(i_GameVars.paused)
{
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0,0,w, h,false);
draw_set_alpha(1);

//draw title
draw_set_font(title_font);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
var col = c_white;
var offset = 2;
var xx = w/2;
var yy = h/4;
txt = title;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);




draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

for( var i=0; i< pause_items_nums;i++)
{
	var offset = 2;
	var txt = pause_items[i];
	if(menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = w/2;
	var yy = h/4+(h/8)*(i+2);
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

}
draw_set_font(font_3rd);
draw_text_outlined(w/2, 7/8*h, c_black,c_white, "Player " + string(global.pausedplayer+1) + " paused");

}