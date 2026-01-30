left_click = mouse_check_button_pressed(mb_left)
E = keyboard_check_pressed(ord("E"))

depth =- y

if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left-400,bbox_top-400,bbox_right+400,bbox_bottom+400)){
	 if((E || position_meeting(mouse_x, mouse_y,self)) && left_click) {
			
			addItem(global.playerInv, objname, objdesc, objsprite, "");
				
			//image_speed = 1;

			 instance_destroy();
		 }
 }
