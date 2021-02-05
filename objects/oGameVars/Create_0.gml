/// @description Insert description here
// You can write your code in this editor

#macro RECORDFILE "Records.sav"

playerSprite = [5,4,3,2];
levels[0,0] = OutAndBack;
levels[1,0] = TheGraveyard;
levels[2,0] = DesertCrossing;
levels[3,0] = IslandHoppers;
levels[0,1] = MountainClimber;
levels[1,1] = IslandsInTheySky;
levels[2,1] = PyramidPanic;
levels[3,1] = SawFactory;
level_x =0;
level_y = 0;
runSprites = [s_TheBoy_Run, s_TheGirl_Run, s_Santa_Run, s_Knight_Run, s_NinjaGirl_Run, s_NinjaGuy_Run, s_AdvGirl_Run, s_IJG_Run];
idleSprites = [s_TheBoy_Idle,s_TheGirl_Idle, s_Santa_Idle, s_Knight_Idle, s_NinjaGirl_Idle, s_NinjaGuy_Idle, s_AdvGirl_Idle, s_IJG_Idle];
dieSprites = [s_TheBoy_Die,s_TheGirl_Die, s_Santa_Die,s_Knight_Die, s_NinjaGirl_Die, s_NinjaGuy_Die, s_AdvGirl_Die, s_IJG_Die];
jumpUpSprites = [s_TheBoy_JumpUp,s_TheGirl_JumpUp,s_Santa_JumpUp,s_Knight_JumpUp, s_NinjaGirl_JumpUp, s_NinjaGuy_JumpUp, s_AdvGirl_JumpUp, s_IJG_JumpUp];
jumpDownSprites = [s_TheBoy_JumpDown,s_TheGirl_JumpDown,s_Santa_JumpDown, s_Knight_JumpDown, s_NinjaGirl_JumpDown, s_NinjaGuy_JumpDown, s_AdvGirl_JumpDown, s_IJG_JumpDown];
sp = false;
mp = false;
playerMods = [0,1,2,3];

jumpMods = [0, 3, -2,0];
speedMods = [0, -1.5, 2,0];
gravMods = [0,0,0, -0.1];
accMods = [0,1,-1, -1];
dashMods = [0, 0, 2, -3];
active_player = [false,false,false,false];

names = ["Player 1", "Player 2", "Player 3", "Player 4"];
items = ["None", "Saw", "Super Speed", "Super Jump", "Invinciblity","Fake Item Box","Stun Laser"];
styles = ["Normal", "Jump", "Speed", "Spaceman"];

records[0,0] = 30000;
records[1,0] = 30000;
records[2,0] = 30000;
records[3,0] = 30000;
records[0,1] = 30000;
records[1,1] = 30000;
records[2,1] = 30000;
records[3,1] = 30000;
controller_num = [0,1,2,3];
paused = false;
if(file_exists(RECORDFILE))
{
	var file = file_text_open_read(RECORDFILE);
	
	for(xx = 0; xx<2; xx++)
	{
		for(yy= 0; yy<4;yy++)
		{
			records[yy,xx] = file_text_read_real(file);
			file_text_readln(file);
		}
	}
	
	file_text_close(file)
}

laps = 3;

