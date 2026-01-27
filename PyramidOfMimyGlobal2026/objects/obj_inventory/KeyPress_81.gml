if(instance_exists(obj_invGUI)){
	
	if(ds_grid_get(global.playerInv, 7, global.itemSelected) == true) {
		//do nothing
	} else {
		trashItem();
		//audio_play_sound(snd_menuEnter, 1, false);
	}
}
