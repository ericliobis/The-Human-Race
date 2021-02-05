collisionMap = layer_tilemap_get_id("Collision");
deathMap = layer_tilemap_get_id("DeathZones");
dFAMap = layer_tilemap_get_id("DeathFromAbove");
top = round(400*image_yscale);
left = round(100*image_xscale);
right = round(100*image_xscale);
bottom = round(0*image_yscale);
startdash_x = 0;
startdash_y = 0;
onFloor = false;
onWallLeft = false;
onWallRight = false;
onWall=0;
dashCounter = 0;
dashDelay2 = 35;
inDeathZone = false;
stunned = false;
current_lap = 0;
current_item = 0;
active_item = false;
invincible = false;
getting_item = false;
stuns = 3;
walk_speed_normal = walksp;
vsp_max_normal = vsp_max;
boostspeed = walksp*1.5;
walksp += i_GameVars.speedMods[i_GameVars.playerMods[playerNum]];
jumpheight += i_GameVars.jumpMods[i_GameVars.playerMods[playerNum]];
vsp_wjump +=i_GameVars.jumpMods[i_GameVars.playerMods[playerNum]];
grav += i_GameVars.gravMods[i_GameVars.playerMods[playerNum]];
hsp_acc += i_GameVars.accMods[i_GameVars.playerMods[playerNum]];
hsp_dash += i_GameVars.dashMods[i_GameVars.playerMods[playerNum]];
numberOfCheckPoints = instance_number(oCheckPointFlag);
for(var i=0;i<numberOfCheckPoints;i++)
{
checkPoints[i] = true;
}
sprite_index = i_GameVars.idleSprites[i_GameVars.playerSprite[playerNum]];
	image_speed = 1;
	
	if(!i_GameVars.active_player[playerNum] && i_GameVars.mp)
	{
		instance_destroy();
	}