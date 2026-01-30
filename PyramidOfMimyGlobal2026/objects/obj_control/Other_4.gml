audio_stop_all();

if(room == rm_forest)
{
	audio_play_sound(bgm_narrative, 1, true);
	scr_create_textbox("intro");
	audio_sound_gain(bgm_narrative, 1, 2);
}
else if(room == rm_ballroom)
{
	audio_play_sound(bgm_ballroom, 1, true);
	audio_sound_gain(bgm_ballroom, 0.2, 1);
}
else if(room == rm_bedroom)
{
	audio_play_sound(bgm_bedroom, 1, true);
	audio_sound_gain(bgm_bedroom, 0.5, 2);
}
else if((room == rm_kitchen) || (room == rm_winecellar) || (room == rm_start))
{
	audio_play_sound(bgm_kitchen, 1, true);
}