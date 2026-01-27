openInv = keyboard_check_pressed(ord("I"));
closeInv = keyboard_check_pressed(vk_escape);
canOpen = !instance_exists(obj_invGUI) && !instance_exists(obj_par_UI)

global.inv_x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
global.inv_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);


//create the inventory on screen
if(openInv) {
	if(canOpen) {
	instance_create_depth(global.inv_x, global.inv_y, -9999, obj_invGUI);
	} else {
		//get rid of invenotry
		instance_destroy(obj_invGUI);
		repeat(2) {
			instance_destroy(obj_button);
		}
	}
}   


//making sure the blank sprite is always there 
if(ds_grid_get(global.playerEquip, 0, 0) == 0) {
	ds_grid_set(global.playerEquip, 3, 0, spr_blank);
}
if(ds_grid_get(global.playerEquip, 0, 1) == 0) {
	ds_grid_set(global.playerEquip, 3, 1, spr_blank);
}
