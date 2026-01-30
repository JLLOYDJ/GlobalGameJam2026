audio_stop_all();

if(room == rm_start)
{
	beginning = true;
}

if(room == rm_forest)
{
	audio_play_sound(bgm_narrative, 1, true);
	audio_sound_gain(bgm_narrative, 1, 2);
	if(beginning = true) {
		beginning = false;
		scr_create_textbox("intro");
		obj_player.image_xscale = -1;
	} else {
		
		if (global.winOrLose = false) {
			scr_create_textbox("outro lose");
			instance_destroy(obj_player);
		} else {
			scr_create_textbox("outro")
			obj_player.image_xscale = -1;
		}
	}
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