//draw_text_outlined(x, y, outline color, string color, string)  
var xx,yy;  
xx = argument[0];  
yy = argument[1];  
olw = 2
//Outline  
draw_set_color(argument[2]);  
draw_text(xx+olw, yy+olw, argument[4]);  
draw_text(xx-olw, yy-olw, argument[4]);  
draw_text(xx,   yy+olw, argument[4]);  
draw_text(xx+olw,   yy, argument[4]);  
draw_text(xx,   yy-olw, argument[4]);  
draw_text(xx-olw,   yy, argument[4]);  
draw_text(xx-olw, yy+olw, argument[4]);  
draw_text(xx+olw, yy-olw, argument[4]);  
  
//Text  
draw_set_color(argument[3]);  
draw_text(xx, yy, argument[4]);  