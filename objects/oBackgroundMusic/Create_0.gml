/// @description Insert description here
// You can write your code in this editor
list_o_songs = [m_main, m_lostforest,m_graveyard, m_destercrossing, m_mountainclimber, m_islandhoppers, m_islandsintheksy,m_pyramicpanic,m_SawFactory, m_tutorial];
current_song = 0;
transin = false;
start = false;
oldsong = 0;
transout = false;
nextsong = 0;
audio_play_sound(list_o_songs[current_song],1000,true);
enum music
{
	MAIN,
	LF,
	GY,
	DC,
	MC,
	IH,
	IITS,
	PP,
	SF,
	TUT
}