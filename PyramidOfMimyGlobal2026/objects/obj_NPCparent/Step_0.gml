left_click = mouse_check_button_pressed(mb_left)
E = keyboard_check_pressed(ord("E"))

depth =- y

if(!instance_exists(obj_textbox)) {
	image_speed = 0;
	image_index = 0;
}

if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left-50,bbox_top-50,bbox_right+50,bbox_bottom+50)){
		 if ((E || (position_meeting(mouse_x, mouse_y, self) && left_click)) && !instance_exists(obj_textbox)
		 && text_id != "null" && text_id != "") {
			 
				scr_create_textbox(text_id);
				
				//image_speed = 1;
		}
}