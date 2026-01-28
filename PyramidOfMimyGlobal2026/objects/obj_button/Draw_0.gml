var buttontop = buttonX - buttonWidth/2;
var buttonleft = buttonY - buttonHeight;
var buttonbottom = buttonX + buttonHeight/sprite_get_height(buttonSprite);
var buttonright = buttonY + (buttonWidth/sprite_get_height(buttonSprite))*2;

draw_set_colour(c_black);

if (point_in_rectangle(mouse_x, mouse_y, buttonX - buttonWidth/2, buttonY-buttonHeight,
			buttonX + buttonWidth - 50, 
			buttonY - buttonHeight/sprite_get_height(buttonSprite))) {
		draw_sprite_ext(buttonSprite, 1, buttonX - buttonWidth/2, buttonY-buttonHeight, buttonWidth/sprite_get_width(buttonSprite),
				buttonHeight/sprite_get_height(buttonSprite), 0, c_white, 1);
		if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_cursorObject)) {
			audio_play_sound(snd_buttonClick, 1, false);
			heldObject = instance_create_depth(mouse_x, mouse_y, depth - 1, obj_cursorObject);
			heldObject.objectName = ds_grid_get(global.playerInv, 0, global.itemSelected);
			heldObject.objectDesc = ds_grid_get(global.playerInv, 1, global.itemSelected);
			heldObject.objectSprite = ds_grid_get(global.playerInv, 2, global.itemSelected);
			heldObject.objectScript = ds_grid_get(global.playerInv, 3, global.itemSelected);
			
			instance_destroy(obj_invGUI);
			instance_destroy(self);
		}
} else {
	draw_sprite_ext(buttonSprite, 0, buttonX - buttonWidth/2, buttonY-buttonHeight, buttonWidth/sprite_get_width(buttonSprite),
					buttonHeight/sprite_get_height(buttonSprite), 0, c_white, 1);
}
					
draw_text(buttonX - buttonWidth/4 + 10, buttonY-buttonHeight + 10, myText)

//draw_rectangle(buttonX - buttonWidth/2, buttonY-buttonHeight, buttonX + buttonWidth - 50, buttonY - buttonHeight/sprite_get_height(buttonSprite), false)