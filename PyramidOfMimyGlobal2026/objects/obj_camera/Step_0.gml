//global.cam_x = camera_get_view_x(view_camera[0]);
//global.cam_y = camera_get_view_y(view_camera[0]);


if(moving == false) {
	global.cam_x = camera_get_view_x(view_camera[0]);
	global.cam_y = camera_get_view_y(view_camera[0]);
	originalX = global.cam_x;
	originalY = global.cam_y;
	camera_set_view_pos(view_camera[0], global.cam_x, global.cam_y);
}

//camera shake
cam_xOffset = random_range(-1*global.cameraShake, global.cameraShake);
cam_yOffset = random_range(-1*global.cameraShake, global.cameraShake);

if(global.cameraShake > 0) {
	moving = true
	global.cameraShake -= 0.1;
	camera_set_view_pos(view_camera[0], global.cam_x+cam_xOffset, global.cam_y+cam_yOffset);
	if (global.cameraShake < 0) {
		global.cameraShake = 0;
		moving = false;
		camera_set_view_pos(view_camera[0], originalX,originalY);
	}
}

/*if(global.cameraShake == 0 && moving == true) {
	global.cam_x = originalX;
	global.cam_y = originalY;
	moving = false;
	camera_set_view_pos(view_camera[0], global.cam_x, global.cam_y);
}*/

