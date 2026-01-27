useButton = instance_create_depth(bbox_right + 68, 
								camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) + 25 + 80, 
								depth - 1, 
								obj_button);
useButton.myText = "Use [E]";

trashButton = instance_create_depth(bbox_right + 184, 
								camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) + 25 + 80, 
								depth - 1, 
								obj_button);
trashButton.myText = "Destroy [Q]";
