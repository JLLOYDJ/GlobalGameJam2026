left_click = mouse_check_button_pressed(mb_left)
E = keyboard_check_pressed(ord("E"))

depth =- y

if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left-400,bbox_top-400,bbox_right+400,bbox_bottom+400)){
		 if((E || point_in_rectangle(mouse_x, mouse_y, bbox_left,bbox_top,bbox_right,bbox_bottom)) && left_click) {
			 if(objname = "oranges") {
					 key = instance_create_depth(x, y+32, depth+1, obj_itemPickup)
					 key.objname = "Key";
					 key.objdesc = "The key that unlocks Le Don's bedroom. Who knows what's in there.";
					 key.objsprite = spr_key;
			 } else {
				 if((E || point_in_rectangle(mouse_x, mouse_y, bbox_left,bbox_top,bbox_right,bbox_bottom)) && left_click) {
				addItem(global.playerInv, objname, objdesc, objsprite, "");
				
				//image_speed = 1;
			 }
			 instance_destroy();
			 }
		 }
}