audio_stop_all();

if(room == rm_forest)
{
	audio_play_sound(bgm_narrative, 100, true);
	scr_create_textbox("intro");
}
else if(room == rm_ballroom)
{
	audio_play_sound(bgm_ballroom, 100, true);
}
else if(room == rm_bedroom)
{
	audio_play_sound(bgm_bedroom, 100, true);
}
else if((room == rm_kitchen) || (room == rm_winecellar) || (room == rm_start))
{
	audio_play_sound(bgm_kitchen, 100, true);
}