/// @description Set Up Camera

xTo = xstart;
yTo = ystart;
scrollSpeed = 2;
offset = 750;
BG_scroll = layer_get_id("BG");

if(room != SawFactory)
{

}
topLayer = min(layer_get_depth("Player1"),layer_get_depth("Player2"),layer_get_depth("Player3"),layer_get_depth("Player4"))