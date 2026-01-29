if (room != rm_start 
	&& (hotbarMade == false || !instance_exists(obj_hotbar))) {
	instance_create_layer(x,y,"Instances", obj_hotbar);
	hotbarMade = true;
}
