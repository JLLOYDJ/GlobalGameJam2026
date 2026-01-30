if(!collision_rectangle(bbox_left-200,bbox_top-200,bbox_right+200,bbox_bottom+200, obj_player, false, true)){
	move_towards_point(obj_player.x, obj_player.y, 10);
	alarm[0] =  0.2*game_get_speed(gamespeed_fps);
}else{
	
		speed = 0;
	scr_create_textbox(text_id);
	
}