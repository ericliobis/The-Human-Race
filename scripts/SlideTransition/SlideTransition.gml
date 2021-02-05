///mode, targetRoom
music_num = 0;
with(oTransition)
{
	mode = argument[0];
	if(argument_count>1) target = argument[1];
}
switch (argument[1])
{
	
	case OutAndBack:
	music_num = music.LF;
	break;
		case TheGraveyard:
	music_num = music.GY;
	break;
		case DesertCrossing:
	music_num = music.DC;
	break;
		case MountainClimber:
	music_num = music.MC;
	break;
		case IslandHoppers:
	music_num = music.IH;
	break;
case IslandsInTheySky:
	music_num = music.IITS;
	break;
	case PyramidPanic:
	music_num = music.PP;
	break;
	case SawFactory:
	music_num = music.SF;
	break;
	case Tutorial:
	music_num = music.TUT;
	break;
	case rSecret:
	music_num = music.TUT;
	break;
	default: music_num = music.MAIN;
}
if(music_num != inst_music.current_song)
{
	inst_music.start = true;
	inst_music.transout = true;
	inst_music.oldsong = inst_music.current_song;
	inst_music.current_song = music_num;
}