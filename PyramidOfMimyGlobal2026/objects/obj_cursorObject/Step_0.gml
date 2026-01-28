x = mouse_x - 24;
y = mouse_y - 24;

//cancelling using the object
if (mouse_check_button_pressed(mb_right) || keyboard_check_pressed(ord("Q"))) {
	instance_create_depth(global.inv_x, global.inv_y, -9999, obj_invGUI);
	instance_destroy(self);
}