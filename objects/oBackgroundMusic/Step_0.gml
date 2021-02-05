/// @description Insert description here
// You can write your code in this editor
if(transout)
{
	if(start)
	{
	audio_sound_gain(list_o_songs[oldsong],0,2000);
		audio_play_sound(list_o_songs[current_song],1000,true);
		audio_sound_gain(list_o_songs[current_song],0,0);
		audio_sound_gain(list_o_songs[current_song],0.35,2000);
	start = false;
	}
	if(audio_sound_get_gain(list_o_songs[oldsong])<=0)
	{
		audio_stop_sound(list_o_songs[oldsong]);

		transout = false;
	}
}