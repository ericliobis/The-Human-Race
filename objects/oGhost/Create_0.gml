/// @description Insert description here
// You can write your code in this editor
frame = 1;
image_blend = c_teal;
image_alpha = 0.6;
ghostFileName = global.currentMap;
ghostDataRoot = ds_list_create();
if (file_exists(ghostFileName))
{
	ghostFile = file_text_open_read(ghostFileName);
	ghostDataRoot = json_decode(file_text_read_string(ghostFile));
	ghostData = ghostDataRoot[? "root"];
	ghostFrames = ds_list_size(ghostData);
	ghostFile = file_text_close(ghostFile);
	
}else instance_destroy();
	
	