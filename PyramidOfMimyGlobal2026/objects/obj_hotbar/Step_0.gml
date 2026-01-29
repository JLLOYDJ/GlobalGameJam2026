//hotbarLeft =  global.cam_x + global.cam_w/2 - 30 - 250;
//hotbarTop = global.cam_y + global.cam_h - sprite_get_height(spr_hotbar) - 30 - 50;
//hotbarBottom = global.cam_y + global.cam_h - sprite_get_height(spr_hotbar) - 30 + 50;
//section = sprite_get_width(spr_hotbar)/5;
canOpen = !instance_exists(obj_invGUI) && !instance_exists(obj_gameMenu) && !instance_exists(obj_par_UI);
invOpen = instance_exists(obj_invGUI);
menuOpen = instance_exists(obj_gameMenu);
menuX = (global.cam_x + global.cam_w) - 180;
menuY = global.cam_y + _yy;
invX = (global.cam_x + global.cam_w) - 300;
invY = global.cam_y + _yy;
depth = -999999999;


//interaction
leftClick = mouse_check_button_pressed(mb_left);
esc = keyboard_check_pressed(vk_escape);

if (esc) {
	if(canOpen) {
		instance_create_depth(x,y,-9999, obj_gameMenu);
		audio_play_sound(snd_buttonClick, 1, false);
	} else {
		if(menuOpen) {
			instance_destroy(obj_gameMenu);
			audio_play_sound(snd_buttonClick, 1, false);
		}
		if(invOpen) {
			instance_destroy(obj_invGUI);
			audio_play_sound(snd_buttonClick, 1, false);
			repeat(2) {
				instance_destroy(obj_button);
			}
		}
	}
}

//change appearance depending on what is being hovered over
if(point_in_circle(mouse_x, mouse_y, menuX, menuY, 34)) { //if souching menu icon
	menuIndex = 1;
	if(leftClick) {
		audio_play_sound(snd_buttonClick, 1, false);
		if(canOpen) {
			instance_create_depth(x,y,-9999, obj_gameMenu);
		} else {
			instance_destroy(obj_gameMenu);
		}
	}
} else {
	menuIndex = 0;
}

if(point_in_circle(mouse_x, mouse_y, invX, invY, 34)) { //if touching inv icon
	invIndex = 3;
	if(leftClick) {
		audio_play_sound(snd_buttonClick, 1, false);
		if(canOpen) {
			instance_create_depth(global.inv_x,global.inv_y,-9999, obj_invGUI);
		} else {
			instance_destroy(obj_invGUI);
				repeat(2) {
					instance_destroy(obj_button);
				}
		}
	}
} else {
	invIndex = 2;
}


/*	//change appearance of hotbar depending on what is being hovered over
	 //menu
	if(point_in_rectangle(mouse_x,mouse_y,hotbarLeft, hotbarTop, 
		hotbarLeft+section, hotbarBottom)) 
	{
		if(invOpen) { hotbarIndex = 9; }
		else { hotbarIndex = 1; }
		
		if(leftClick) {
			if(canOpen) {
				instance_create_layer(x,y,"inst_gui", obj_game_menu);
			} else {
				instance_destroy(obj_game_menu);
			}
		}
	}

	 //dodge
	else if(point_in_rectangle(mouse_x,mouse_y,hotbarLeft+section, hotbarTop, 
		hotbarLeft+(section*2), hotbarBottom)) 
	{
		if(invOpen) { hotbarIndex = 8; }
		else if(menuOpen) { hotbarIndex = 12; }
		else { 
			hotbarIndex = 2; 
		}
		if(leftClick && canOpen) {
			keyboard_check_pressed(ord("Q"));
			show_debug_message("hotbar dodge");
		}
	}

	 //attack
	else if(point_in_rectangle(mouse_x,mouse_y,hotbarLeft+(section*2), hotbarTop, 
		hotbarLeft+(section*3), hotbarBottom)) 
	{
		if(invOpen) { hotbarIndex = 7; }
		else if(menuOpen) { hotbarIndex = 11; }
		else {
			hotbarIndex = 3; 
		}
		if(leftClick && canOpen) {
			keyboard_check_pressed(vk_space);
		}
	}
 
	 //special attack
	else if(point_in_rectangle(mouse_x,mouse_y,hotbarLeft+(section*3), hotbarTop, 
		hotbarLeft+(section*4), hotbarBottom)) 
	{
		if(invOpen) { hotbarIndex = 6; }
		else if(menuOpen) { hotbarIndex = 10; }
		else { 
			hotbarIndex = 4;	
		}
		if(leftClick && canOpen) {
			keyboard_check_pressed(ord("F"));
		}
	}
 
	 //inventory
	else if(point_in_rectangle(mouse_x,mouse_y,hotbarLeft+(section*4), hotbarTop, 
		hotbarLeft+(section*5), hotbarBottom)) 
	{
		if(menuOpen) { hotbarIndex = 9; }
		else { hotbarIndex = 5; }
		if(leftClick) {
			if(canOpen) {
				instance_create_depth(global.inv_x,global.inv_y,-9999, obj_invGUI);
			} else {
				instance_destroy(obj_invGUI);
				repeat(2) {
					instance_destroy(obj_button);
				}
			}
		}
	}


	else {  if(invOpen) { hotbarIndex = 5; }
			else if(menuOpen) { hotbarIndex = 1; }
			else { hotbarIndex = 0; } 
		}
*/
