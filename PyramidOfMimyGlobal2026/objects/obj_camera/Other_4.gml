global.cam_w = camera_get_view_width(view_camera[0]);
global.cam_h = camera_get_view_height(view_camera[0]);
cam_xOffset = 0;
cam_yOffset = 0;

view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;

view_wport[0] = global.window_w;
view_hport[0] = global.window_h;

//set up camera
view_camera[0] = camera_create_view
	(0,0,
	view_wport[0],
	view_hport[0],0,		
	obj_player,-1,-1,
	global.window_w/2,
	global.window_h/2);

//set window to correct size for viewport
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - (global.window_w/2);
var _ypos = (_dheight / 2) - (global.window_h/2);
window_set_rectangle(_xpos, _ypos, global.window_w, global.window_h);

surface_resize(application_surface, global.window_w, global.window_h);

alarm[0] = 1;
