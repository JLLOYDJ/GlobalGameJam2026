if ((room != rm_start || room != rm_forest)
	&& (hotbarMade == false || !instance_exists(obj_hotbar))) {
	instance_create_layer(x,y,"Instances", obj_hotbar);
	hotbarMade = true;
}
if(instance_exists(obj_hotbar) && (room == rm_start || room == rm_forest)) {
	instance_destroy(obj_hotbar);
}