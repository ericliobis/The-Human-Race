/// @description Insert description here
// You can write your code in this editor
for(char=0;char<4;char++)
{
playerCol = instance_place(x,y, player_types[char])
if(playerCol != noone && CountCPs(playerCol.checkPoints) == instance_number(oCheckPointFlag) && i_GameVars.sp)
	{
		//reset the checkpoints
		
for (var i = 0; i < instance_number(oCheckPointFlag); i += 1)
   {
   playerCol.checkPoints[i] = false;
    flag = instance_find(oCheckPointFlag,i);
   flag.image_index = 0;
   }

				for(i=0;i<50;i++) 
		{
			instance_create_layer(x,y, "Effects",oFirework)
			
		}
		playerCol.spawn_point_x = x;
		playerCol.spawn_point_y = y;
		
				if(i_GameVars.sp){
		//destroy all the ghosts
		instance_destroy(oGhost);
			ghostRecord = true;
			ghostRecordFrames=0;
			if(!global.start)
{
	global.start = true;

	}else{


		

		
		if((global.sp_timer<i_GameVars.records[i_GameVars.level_x, i_GameVars.level_y]))
		{
			i_GameVars.alarm[0] = 1;
					if(ds_exists(ghostRecordList, ds_type_list))
{
	var _wrapper = ds_map_create();
	ds_map_add_list(_wrapper, "root", ghostRecordList);
	var _theLot = json_encode(_wrapper);
	if(file_exists(global.currentMap)) file_delete(global.currentMap);
	var _recordFile = file_text_open_write(global.currentMap);
	file_text_write_string(_recordFile,_theLot);
	file_text_close(_recordFile);
	ds_map_destroy(_wrapper);
}
		i_GameVars.records[i_GameVars.level_x, i_GameVars.level_y] = global.sp_timer;
		
		
		}
		//explision
			FireWork(x,y,"FW");
		global.sp_timer = 0;
	
	}
	instance_create_layer(0,0,"Ghost",oGhost);
		}
		

	}


if(playerCol != noone && CountCPs(playerCol.checkPoints) == instance_number(oCheckPointFlag) && i_GameVars.mp)
	{
		//reset the checkpoints
		
for (var i = 0; i < instance_number(oCheckPointFlag); i += 1)
   {
   playerCol.checkPoints[i] = false;
    flag = instance_find(oCheckPointFlag,i);
   flag.image_index = 0;
   }

				for(i=0;i<50;i++) 
		{
			instance_create_layer(x,y, "Effects",oFirework)
			
		}
		playerCol.spawn_point_x = x;
		playerCol.spawn_point_y = y;
		//increment the current player's lap
		playerCol.current_lap++;
				
		

	}

}







if(ghostRecord && instance_exists(o_Player1) && !i_GameVars.paused)
{
	if(!ds_exists(ghostRecordList, ds_type_list))
	{
		
		ghostRecordFrames = 1;
		ghostRecordList = ds_list_create();
	}
	
	var _frameToRecord = ds_map_create();
	
	with(o_Player1)
	{
		_frameToRecord[? "x"] = x;
		_frameToRecord[? "y"] = y;
		_frameToRecord[? "xs"] = image_xscale;
		_frameToRecord[? "ys"] = image_yscale;
		_frameToRecord[? "sp"] = sprite_index;
		_frameToRecord[? "img"] = image_index;
}
ds_list_add(ghostRecordList, _frameToRecord)
ds_list_mark_as_map(ghostRecordList, ds_list_size(ghostRecordList)-1)
ghostRecordFrames++;
}