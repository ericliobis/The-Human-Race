for(i=0;i<50;i++) 
		{
			dummy = instance_create_layer(argument0,argument1, "Effects",oFirework)
with(dummy)
{
	switch argument2
	{
	case "FW":
	
red1 = round(random(1))*255;
green1 = round(random(1))*255;
blue1 = round(random(1))*255;
break;
case "blood":
red1 = 255;
green1 = 0;
blue1 = 0;
break;
case "zap":
red1 = 255;
green1 = 255;
blue1 = 0;
break;
default:
red1 = round(random(1))*255;
green1 = round(random(1))*255;
blue1 = round(random(1))*255;
break;
	}
image_blend = make_colour_rgb(red1,green1,blue1);
}
		}
		