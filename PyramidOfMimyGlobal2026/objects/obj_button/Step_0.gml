//making it so that clicking USE actually does something
/*if (point_in_rectangle(mouse_x, mouse_y, buttontop, buttonleft, buttonbottom, buttonright)
	&& mouse_check_button_pressed(mb_left)) {
	heldObject = instance_create_depth(mouse_x, mouse_y, depth - 1, obj_cursorObject);
	heldObject.objectName = ds_grid_get(global.playerInv, 0, global.itemSelected);
	heldObject.objectDesc = ds_grid_get(global.playerInv, 1, global.itemSelected);
	heldObject.objectSprite = ds_grid_get(global.playerInv, 2, global.itemSelected);
	heldObject.objectScript = ds_grid_get(global.playerInv, 3, global.itemSelected);
}





//changing the buttons depending on what object is in them
/*if(ds_grid_get(global.playerInv, 5, global.itemSelected) != "object" && myText == "Use [E]") {
	myText = "Equip [E]";
}
if(ds_grid_get(global.playerInv, 5, global.itemSelected) == "object" && myText == "Equip [E]") {
	myText = "Use [E]";
}

//changing button depending on if its equipped or not
if(ds_grid_get(global.playerInv, 7, global.itemSelected) == false && myText == "Unequip [E]") {
	myText = "Equip [E]";
}
if(ds_grid_get(global.playerInv, 7, global.itemSelected) == true && myText == "Equip [E]") {
	myText = "Unequip [E]";
}

/*if(eButton) {
	if(ds_grid_get(global.playerInv, 5, global.itemSelected) == "object") {
		script_execute(ds_grid_get(global.playerInv, 4, global.itemSelected));
		trashItem();
	}
	else if(ds_grid_get(global.playerInv, 5, global.itemSelected) != "object" 
			&& ds_grid_get(global.playerInv, 7, global.itemSelected) == false) {
		equipItem(global.playerEquip,
				ds_grid_get(global.playerInv, 0, global.itemSelected),
				ds_grid_get(global.playerInv, 5, global.itemSelected),
				ds_grid_get(global.playerInv, 6, global.itemSelected),
				ds_grid_get(global.playerInv, 3, global.itemSelected),
				ds_grid_get(global.playerInv, 4, global.itemSelected),
				);
		ds_grid_set(global.playerInv, 7, global.itemSelected, true);
		for(i = 0; i < global.invEndAt; i++) {
			if(ds_grid_get(global.playerInv, 7, i) == true 
			&& i != global.itemSelected
			&& ds_grid_get(global.playerInv, 5, i) == ds_grid_get(global.playerInv, 5, global.itemSelected)) {
				ds_grid_set(global.playerInv, 7, i, false);
			}
		}
	
	}

	else if(ds_grid_get(global.playerInv, 5, global.itemSelected) != "object" 
			&& ds_grid_get(global.playerInv, 7, global.itemSelected) == true) {
		unequipItem(ds_grid_get(global.playerInv, 5, global.itemSelected));
		ds_grid_set(global.playerInv, 7, global.itemSelected, false);
	}	
}

if(qButton) {
	if(ds_grid_get(global.playerInv, 7, global.itemSelected) == true) {
		//do nothing
	} else {
		trashItem();
	}
}*/ //<---- MOVED TO OBJ_INVENTORY

/*if(myText == "Destroy [Q]") {
	if(ds_grid_get(global.playerInv, 7, global.itemSelected) == true) {
		image_index = 1;
	}
}*/
