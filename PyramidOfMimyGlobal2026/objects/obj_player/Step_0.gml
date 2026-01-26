
//check if object is in a circle, if yes, stop moving
if(!point_in_circle(x, y, targetX, targetY, 32)) {
	move_towards_point(targetX, targetY, 5);
} else {
	speed = 0;
}
//change target to walk towards 
if(mouse_check_button_pressed(mb_left)){
	targetX = mouse_x;
	targetY = mouse_y;	
}
