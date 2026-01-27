menuDown = mouse_wheel_down() || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
menuUp = mouse_wheel_up() || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

if(menuDown) {
	audio_play_sound(snd_menuMove, 1, false);
	global.itemSelected = clamp(++global.itemSelected, 0, ds_grid_height(myItems) -1);
	
	if(global.itemSelected >= global.invEndAt) {
		++global.scrolledAmount;
		++invOnScreen;

	}
	if(global.scrolledAmount + invOnScreen > ds_grid_height(myItems)) {
		--global.scrolledAmount;
	}
}
if(menuUp) {
	audio_play_sound(snd_menuMove, 1, false);
	global.itemSelected = clamp(--global.itemSelected, 0, ds_grid_height(myItems) -1);
	
	if(global.itemSelected < global.scrolledAmount) {
		--global.scrolledAmount;
	}
	--scrollPosition;
}

//useful ticks
if(ds_grid_get(myItems, 0, 0) != 0) {
	isEmpty = false;
	global.invEndAt = ds_grid_height(myItems);
	if(ds_grid_height(myItems) >= floor((sprite_height - (textBorder*3)) / 32)) {
		global.invEndAt = floor((sprite_height - (textBorder*3)) / 32);
	}
}

if(ds_grid_get(myItems, 0, 0) == 0) {
	isEmpty = true;
	global.invEndAt = 0;
}

if(ds_grid_get(global.playerEquip, 0, 0) != 0) {
	noWeapon = false;
} else {
	noWeapon = true;
}
if(ds_grid_get(global.playerEquip, 0, 1) != 0) {
	noArmour = false;
} else {
	noArmour = true;
}
