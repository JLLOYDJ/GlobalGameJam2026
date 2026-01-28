#region movement

//if UI open, cant move and cant choose a new place to move
if (!instance_exists(obj_par_UI)){
	//check if object is in a circle, if yes, stop moving
	if(!point_in_circle(x, y, targetX, targetY, 16)) { // halved the circle size because i centred the player origin -riley
		move_towards_point(targetX, targetY, 5);
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

#endregion