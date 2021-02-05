
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
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_gray;
var offset = 2;
var xx = 270;
var yy = 575;
txt = "Lost Forest";
	if(menu_cursor_y == 0 && menu_cursor_x == 0)
	{
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

draw_set_font(font_record);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = 270;
var yy = 575+50;
txt = "Record: " + string_format(i_GameVars.records[0,0]/60,5,2) + " sec";
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	



	draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_gray;
var offset = 2;
var xx = 730;
var yy = 575;
txt = "The Graveyard";
	if(menu_cursor_y == 0 && menu_cursor_x == 1)
	{
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	draw_set_font(font_record);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = 730;
var yy = 575+50;
txt = "Record: " + string_format(i_GameVars.records[1,0]/60,5,2) + " sec";
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);	
	
	
		draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_gray;
var offset = 2;
var xx = 1190;
var yy = 575;
txt = "Desert Crossing";
	if(menu_cursor_y == 0 && menu_cursor_x == 2)
	{
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	draw_set_font(font_record);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = 1190;
var yy = 575+50;
txt = "Record: "+ string_format(i_GameVars.records[2,0]/60,5,2) + " sec";
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);	
	
	
		draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_gray;
var offset = 2;
var xx = 1650;
var yy = 575;
txt = "Island Hoppers";
	if(menu_cursor_y == 0 && menu_cursor_x == 3)
	{
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	draw_set_font(font_record);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = 1650;
var yy = 575+50;
txt = "Record: "+ string_format(i_GameVars.records[3,0]/60,5,2) + " sec";;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);	
	
	
	
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_gray;
var offset = 2;
var xx = 270;
var yy = 959;
txt = "Mountain Climber";
	if(menu_cursor_y == 1 && menu_cursor_x == 0)
	{
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	draw_set_font(font_record);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = 270
var yy = 959+50; 
txt = "Record: " + string_format(i_GameVars.records[0,1]/60,5,2) + " sec";;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);	
	  
	
	draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_gray;
var offset = 2;
var xx = 730;
var yy = 959;
txt = "Islands in the Sky";
	if(menu_cursor_y == 1 && menu_cursor_x == 1)
	{
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	draw_set_font(font_record);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = 730;
var yy = 959+50;
txt = "Record: "+ string_format(i_GameVars.records[1,1]/60,5,2) + " sec";;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);	
	
	
		draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_gray;
var offset = 2;
var xx = 1190;
var yy = 959;
txt = "Pyramid Panic";
	if(menu_cursor_y == 1 && menu_cursor_x == 2)
	{
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	draw_set_font(font_record);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = 1190;
var yy = 959+50;
txt = "Record: "+ string_format(i_GameVars.records[2,1]/60,5,2) + " sec";;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);	
		
	
		draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_gray;
var offset = 2;
var xx = 1650;
var yy = 959;
txt = "Saw Factory";
	if(menu_cursor_y == 1 && menu_cursor_x == 3)
	{
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_white;
	}
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	
		draw_set_font(font_record);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = 1650;
var yy = 959+50;
txt = "Record: "+ string_format(i_GameVars.records[3,1]/60,5,2) + " sec";;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);	
	
	
			draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var offset = 2;
var xx = w/2;
var yy = h*7/32;
total_score = 0;
for(x1 = 0;x1<4;x1++)
{
	for(y1 = 0; y1<2; y1++)
	{
		total_score += i_GameVars.records[x1,y1]
	}
}
	
txt = "Total Time: "+ string_format(total_score/60,5,2) + " sec";;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);	
	
	