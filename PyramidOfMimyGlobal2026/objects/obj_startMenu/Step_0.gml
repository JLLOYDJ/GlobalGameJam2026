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
	audio_play_sound(snd_buttonClick, 1,false);
}

//switching between menus
#region start menu
if(room == rm_start) {
	if(enter_key) 
	{
		var _sml = menu_level;
		switch(menu_level)
		{
			case 0: //main menu
			switch(pos) {
				case 0:
				//start game
				room_goto(startRoom);
				instance_destroy();
				break;
				case 1:
				//settings
				menu_level = 1
				break;
				case 2:
				//credits
				scr_create_textbox("credits");
				break;
				case 3:
				//exit
				game_restart();
				break;
			}
			break;
			
			case 1: //volume
				switch(pos) {
					case 0:
					break;
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
					menu_level = 0;
					break;
				}
				break;
		
			case 2: //window size - UNUSED FOR NOW
			switch(pos)
			{
				case 0:
				//800x800
				window_set_fullscreen(true);
				window_center();
				global.window_size = 800;
				break;
				case 1:
				//1000x1000
				window_set_fullscreen(true);
				window_center();
				global.window_size = 1000;
				break;
				case 2:
				//fullscreen
				window_set_fullscreen(true);
				break;
				case 3:
				menu_level = 1;
				break;
			}
		
			case 3: //volume
			switch(pos) {
				case 0:
				break;
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
#endregion


#region game menu
if(room != rm_start) {
	if(enter_key) 
	{
		var _sml = menu_level;
		switch(menu_level)
		{
			case 0: //main menu
			switch(pos) {
				case 0:
				//start game
				room_goto(startRoom);
				break;
				case 1:
				//settings
				menu_level = 1
				break;
				case 2:
				//credits
				break;
				case 3:
				//exit
				game_end();
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
		
		}
		if(_sml != menu_level) {
		pos = 0; }
		//storing current number pof options in menu
		op_length = array_length(options[menu_level])
	}
}
#endregion

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
