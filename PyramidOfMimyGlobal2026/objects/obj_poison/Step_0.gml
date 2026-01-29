left_click = mouse_check_button_pressed(mb_left)
E = keyboard_check_pressed(ord("E"))

depth =- y

if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left-200,bbox_top-200,bbox_right+200,bbox_bottom+200)){
		 if ((E || (position_meeting(mouse_x, mouse_y, self) && left_click))) {
			 
				addItem(global.playerInv, name, desc, sprite, "");
				instance_destroy();
				
				//image_speed = 1;
		}
}

