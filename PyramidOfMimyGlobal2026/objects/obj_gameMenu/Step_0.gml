
// doesnt inherit the parent event
depth = -99999999;

up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || mouse_wheel_up();
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || mouse_wheel_down();
enter_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E")) || 
			(point_in_rectangle(mouse_x, mouse_y, x, y, x+width, y+height) 
			&& mouse_check_button_pressed(mb_left));

//storing current number pof options in menu
op_length = array_length(options[menu_level])

if(up_key || down_key) {
	//audio_play_sound(snd_menuMove, 1,false);
}
if(enter_key) {
	//audio_play_sound(snd_menuEnter, 1,false);
}

/*options[0,0] = "Resume";
options[0,1] = "Controls";
options[0,2] = "Help";
options[0,3] = "Settings";
options[0,4] = "Exit"*/
if(room != rm_start && !instance_exists(obj_textbox)) {
	//show_debug_message("teehee")
	if(enter_key) 
	{
		var _sml = menu_level;
		switch(menu_level)
		{
			case 0: //main menu
			switch(pos) {
				case 0:
				//resume
				instance_destroy();
				break;
				case 1:
				//Controls
				//create list of controls
				//scr_create_textbox("menu - controls");
				break;
				case 2:
				//Help
				//list of options that create textboxes
				menu_level = 4;
				break;
				case 3:
				//settings
				menu_level = 1;
				break;
				case 4:
				//exit
				game_restart();
				break;
			}
			break;
		
			case 1: //settings
			switch(pos)
			{
				case 0:
				//volume
				menu_level = 3;
				break;
				case 1:
				//resolution
				menu_level = 2;
				break;
				case 2:
				//back
				menu_level = 0;
				break;
			}
			break;
		
			case 2: //window size
			switch(pos)
			{
				case 0:
				//800x800
				global.window_w = 1280;
				global.window_h = 720;
				window_set_fullscreen(false);
				window_set_size(1280, 720);
				window_center();
				break;
				case 1:
				//1000x1000
				global.window_w = 1920;
				global.window_h = 1080;
				window_set_fullscreen(false);
				window_set_size(1920, 1080);
				window_center();
				break;
				case 2:
				//fullscreen
				window_set_fullscreen(true);
				break;
				case 3:
				menu_level = 1;
				break;
			}
			window_center();
			break;
		
			case 3: //volume
			switch(pos) {
				case 1:
				//100
				audio_master_gain(1);
				options[3,0] = "Volume: MAX";
				break;
				case 2:
				//75
				audio_master_gain(0.75);
				options[3,0] = "Volume: 75%";
				break;
				case 3:
				//50
				audio_master_gain(0.5);
				options[3,0] = "Volume: 50%";
				break;
				case 4:
				//25
				audio_master_gain(0.25);
				options[3,0] = "Volume: 25%";
				break;
				case 5:
				//off
				audio_master_gain(0);
				options[3,0] = "Volume: OFF";
				break;
				case 6:
				//back
				menu_level = 1;
				break;
			}
			break;
			
			case 4: //help
			switch(pos) {
				/*options[4,0] = "Stats";
				options[4,1] = "Armour Class";
				options[4,2] = "Weapon bonuses";
				options[4,3] = "Combat";
				options[4,4] = "Special attack";
				options[4,5] = "Dodging";
				options[4,6] = "Chicken Jiffy";
				options[4,7] = "Back"*/
				case 0: //stats
				scr_create_textbox("help - stats");
				break;
				
				case 1: //AC
				scr_create_textbox("help - ac");
				break
				
				case 2: //weapon bonuses
				scr_create_textbox("help - weapon bonus");
				break;
				
				case 3: //combat
				scr_create_textbox("help - combat");
				break;
				
				case 4: //special attack
				scr_create_textbox("help - special attack");
				break;
				
				case 5: //dodging
				scr_create_textbox("help - dodge");
				break;
				
				case 6: //chicken jiffy
				scr_create_textbox("help - jiffy");
				break;
				
				case 7: //back
				menu_level = 0;
				break;
			}
			break;
		
		}
		if(_sml != menu_level) {
		pos = 0; }
		//storing current number pof options in menu
		op_length = array_length(options[menu_level])
	}
}

//to move through menu
pos += down_key - up_key;

//looping selection
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


optionSections = height/op_length;

	for(var i = 0; i < op_length; i++) {
		if(point_in_rectangle(mouse_x, mouse_y, x, y+optionSections*i, 
			x+width, (y+optionSections*i)+optionSections)) {
				pos = i;;
			}
	}
