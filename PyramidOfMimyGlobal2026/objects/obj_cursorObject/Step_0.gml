x = mouse_x - 24;
y = mouse_y - 24;

//cancelling using the object
if (mouse_check_button_pressed(mb_right) || keyboard_check_pressed(ord("Q"))) {
	instance_create_depth(global.inv_x, global.inv_y, -9999, obj_invGUI);
	instance_destroy(self);
}

left_click = mouse_check_button_pressed(mb_left)
E = keyboard_check_pressed(ord("E"))



if (left_click) {
	if(instance_exists(obj_pot) && objectName = "Poison" && position_meeting(x,y, obj_pot)){
		scr_create_textbox("poison soup");
		instance_destroy();
	} else if (instance_exists(obj_barrel) && objectName = "Poison" && position_meeting(x,y, obj_barrel)){
		scr_create_textbox("poison wine");
		instance_destroy();
	}
}

