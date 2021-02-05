/// @description Insert description here
// You can write your code in this editor
global.sp_timer = 0;
global.bt[0] = i_GameVars.records[i_GameVars.level_x, i_GameVars.level_y];
global.start = false;
#macro RES_W 1920
#macro RES_H 1080
playerCPs = [0,0,0,0];
global.mp_gameStart = false;
global.player_control = [false,false,false,false];
global.player_finished = [false, false, false, false];
global.place = 0;
global.places = [-1,-1,-1,-1];
global.goingHome = false;
global.pausedplayer = 0;
break_ = false;
if(i_GameVars.sp)
{
	global.player_control[0] = true;
}
w = display_get_gui_width();
h = display_get_gui_height();
tutorial = false;
title = "Paused";
title_font = f_MenuT;
font = f_Menu2;
font_mp = f_Menu1;
font_1st = f_Menu2;
font_2nd = f_Menu;
font_3rd = f_game;
font_4th = f_Menu1;
pause_items[0] = "Continue";
pause_items[1] = "Restart";
pause_items[2] = "Back to Menu";
pause_items_nums = array_length_1d(pause_items);
menu_cursor = 0;
can_move_x = true;
can_move_y = true;

start_counter_secs = 6;
start_counter = start_counter_secs*60;

switch(room)
{
	case OutAndBack: default:
		playerName[0] = inst_p1_OAB;
		playerName[1] = inst_p2_OAB;
		playerName[2] = inst_p3_OAB;
		playerName[3] = inst_p4_OAB;
		break;
	case IslandsInTheySky:
	playerName[0] = inst_p1_IITS;
			playerName[1] = inst_p2_IITS;
		playerName[2] = inst_p3_IITS;
		playerName[3] = inst_p4_IITS;
	break;
	case IslandHoppers:
	playerName[0] = inst_p1_IH;
			playerName[1] = inst_p2_IH;
		playerName[2] = inst_p3_IH;
		playerName[3] = inst_p4_IH;
	break;
		case MountainClimber:
	playerName[0] = inst_p1_MC;
			playerName[1] = inst_p2_MC;
		playerName[2] = inst_p3_MC;
		playerName[3] = inst_p4_MC;
	break;
			case DesertCrossing:
	playerName[0] = inst_p1_DC;
			playerName[1] = inst_p2_DC;
		playerName[2] = inst_p3_DC;
		playerName[3] = inst_p4_DC;
	break;
				case PyramidPanic:
	playerName[0] = inst_p1_PP;
			playerName[1] = inst_p2_PP;
		playerName[2] = inst_p3_PP;
		playerName[3] = inst_p4_PP;
	break;
					case TheGraveyard:
	playerName[0] = inst_p1_GY;
			playerName[1] = inst_p2_GY;
		playerName[2] = inst_p3_GY;
		playerName[3] = inst_p4_GY;
	break;
	case SawFactory:
	playerName[0] = inst_p1_SF;
			playerName[1] = inst_p2_SF;
		playerName[2] = inst_p3_SF;
		playerName[3] = inst_p4_SF;
	break;
		case Tutorial:
	playerName[0] = inst_p1_tut;
	tutorial = true;
	break;
	case rSecret:
	playerName[0] = inst_p1_sec;
	tutorial = true;

	break;
}
for(i=0;i<array_length_1d(playerName);i++)
{
global.players[i] = playerName[i];
}