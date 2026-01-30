event_inherited();

left_click = mouse_check_button_pressed(mb_left)
E = keyboard_check_pressed(ord("E"))



if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left-400,bbox_top-400,bbox_right+400,bbox_bottom+400)){
	 if((E || position_meeting(mouse_x, mouse_y,self)) && left_click) {
		 
		 if(hasProducedKey = false) {
			hasProducedKey = true;
			audio_play_sound(snd_buttonClick, 1, false);
			key = instance_create_depth(x, y+100, depth-1, obj_itemPickup);
			//key.objname = "Key";
			//key.objdesc = "The key to Le Monsieur Don's room.";
			//key.objsprite = spr_key;
			scr_create_textbox("poison pickup");
		 }
			
	 }
 }