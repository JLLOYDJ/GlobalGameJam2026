if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true)) {
	if(textboxMade = false) {
		textboxMade = true;
		scr_create_textbox(text_id);
	}
} else {
	textboxMade = false;
}