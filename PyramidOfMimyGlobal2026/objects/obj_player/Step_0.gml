#region movement

depth =-y;

if(room == rm_forest) {
	image_speed = 1;
} else {

	//if UI open, cant move and cant choose a new place to move
	if (!instance_exists(obj_par_UI)){
		//check if object is in a circle, if yes, stop moving
		if(!point_in_circle(x, y, targetX, targetY, 16)
			&& !instance_position(targetX, targetY, obj_invisiblewall)) { // halved the circle size because i centred the player origin -riley
			move_towards_point(targetX, targetY, 5);
			if (targetX > x) {
				image_xscale = -1;
			} else {
				image_xscale = 1;
			}
		} else {
			speed = 0;
		}
		//change target to walk towards 
		if(mouse_check_button_pressed(mb_left)){
			targetX = mouse_x;
			targetY = mouse_y;	
		}
	} else {
		//making sure the player doesnt just keep moving if opening textbox
		//while already moving
		speed = 0;
	}

	if(speed > 0) {
		image_speed = 1;
	} else {
		image_speed = 0;
		image_index = 0;
	}
}

#endregion