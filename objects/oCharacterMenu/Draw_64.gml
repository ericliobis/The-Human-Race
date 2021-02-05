
//draw title
draw_set_font(title_font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_white;
var offset = 2;
var xx = gui_width/2;
var yy = title_y;
txt = title;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for( var i=0; i< menu_items;i++)
{
	var offset = 2;
	var txt = menu[i];
	if(menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - menu_itemheight*(i*1.5);
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

}

col = c_white;
txt = "Style:"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
	var xx = 1600;
	var yy = 550;
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
	var xx = 1600;
	var yy = 700;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);