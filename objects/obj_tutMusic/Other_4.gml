
if(room == Room3)
{
	audio_stop_all();
	audio_play_sound(SnakeMazw, 1, true);
}
if (room == gameover)
{
	
	audio_stop_all();
	audio_play_sound(gameover3, 1,false);
}
if (room == Room1)
{
	audio_stop_all();
	audio_play_sound(overWord, 1, true);
}