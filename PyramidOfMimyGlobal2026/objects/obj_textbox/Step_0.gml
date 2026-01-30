//typewriter fx
//setting what sounds are what

if(draw_char != text_length[page]) {
	if(type == 0){
		audio_play_sound(choose(voiceSnd1, voiceSnd2), 1, false);
		type = 5;
	}
	type--;
}

depth = -99999999999;


if(up_key || down_key) {
	//audio_play_sound(snd_buttonClick, 1, false);
}
if(enter_key) {
		//audio_play_sound(snd_buttonClick, 1, false);
}