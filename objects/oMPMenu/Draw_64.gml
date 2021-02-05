
//draw title
	var offset = 2;
draw_set_font(font_record);
col = c_white;
txt = "Level Select"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 960;
	var yy = 300;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
		var offset = 2;
draw_set_font(font);
col = c_white;
txt = "(Use bumpers to change)";
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 960;
	var yy = 350;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
		var offset = 2;
draw_set_font(font);
col = c_white;
txt = "< "+ string(level_names[currentLevel]) + " >"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 960;
	var yy = 790;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);



// player 1	
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for( var i=0; i< menu_items;i++)
{
	var offset = 2;
	var txt = menu[i];
	if(menu_cursor[0] == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - menu_itemheight*(i);
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

}
draw_set_font(title_font);
col = c_white;
txt = "Style:"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 530;
	var yy = 390;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	col = c_white;
txt = "< " +string(i_GameVars.styles[i_GameVars.playerMods[0]])+ " >";
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 530;
	var yy = 420;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	//player3
	
	draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for( var i=0; i< menu_items;i++)
{
	var offset = 2;
	var txt = menu[i];
	if(menu_cursor[2] == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y_bot - menu_itemheight*(i);
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

}
draw_set_font(title_font);
col = c_white;
txt = "Style:"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 530;
	var yy = 918;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	col = c_white;
txt = "< " +string(i_GameVars.styles[i_GameVars.playerMods[2]])+ " >";
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 530;
	var yy = 948;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
//player 2
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for( var i=0; i< menu_items;i++)
{
	var offset = 2;
	var txt = menu[i];
	if(menu_cursor[1] == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x_side;
	var yy = menu_y - menu_itemheight*(i);
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

}
draw_set_font(title_font);
col = c_white;
txt = "Style:"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 1730;
	var yy = 390;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	col = c_white;
txt = "< " +string(i_GameVars.styles[i_GameVars.playerMods[1]])+ " >";
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 1730;
	var yy = 420;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

//player 4
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for( var i=0; i< menu_items;i++)
{
	var offset = 2;
	var txt = menu[i];
	if(menu_cursor[3] == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x_side;
	var yy = menu_y_bot - menu_itemheight*(i);
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

}
draw_set_font(title_font);
col = c_white;
txt = "Style:"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 1730;
	var yy = 918;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	col = c_white;
txt = "< " +string(i_GameVars.styles[i_GameVars.playerMods[3]])+ " >";
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 1730;
	var yy = 948;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

//draw things

draw_set_alpha(0.9);

if(!(players_active[0] ^^ players_committed[0]))
{
draw_set_color(c_black);
draw_rectangle(40,40,685,480,false);
draw_set_font(font);
col = c_white;
if(!players_committed[0])
{
txt = "Press 'a' to Join"
}else{
	txt = "Ready!";
}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
	var xx = 363;
	var yy = 260;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}	

if(!(players_active[1] ^^ players_committed[1]))
{
draw_set_color(c_black);
draw_rectangle(1220,40,1865,480,false);
draw_set_font(font);
col = c_white;
if(!players_committed[1])
{
txt = "Press 'a' to Join"
}else{
	txt = "Ready!";
}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
	var xx = 1543;
	var yy = 260;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}

if(!(players_active[2] ^^ players_committed[2]))
{
draw_set_color(c_black);
draw_rectangle(40,568,685,1026,false);
draw_set_font(font);
col = c_white;
if(!players_committed[2])
{
txt = "Press 'a' to Join"
}else{
	txt = "Ready!";
}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
	var xx = 363;
	var yy = 797;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}

if(!(players_active[3] ^^ players_committed[3]))
{
draw_set_color(c_black);
draw_rectangle(1220,568,1865,1026,false);
draw_set_font(font);
col = c_white;
if(!players_committed[3])
{
txt = "Press 'a' to Join"
}else{
	txt = "Ready!";
}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
	var xx = 1543;
	var yy = 797;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}
draw_set_alpha(1);