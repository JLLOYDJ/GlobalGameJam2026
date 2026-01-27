if(instance_exists(obj_invGUI)) {
	//audio_play_sound(snd_menuEnter, 1, false);
	if(ds_grid_get(global.playerInv, 5, global.itemSelected) == "object") {
		itemUse(ds_grid_get(global.playerInv, 4, global.itemSelected), ds_grid_get(global.playerInv, 6, global.itemSelected));
		trashItem();
	}
	/*else if(ds_grid_get(global.playerInv, 5, global.itemSelected) != "object" //equip
			&& ds_grid_get(global.playerInv, 7, global.itemSelected) == false) {
		equipItem(global.playerEquip,
				ds_grid_get(global.playerInv, 0, global.itemSelected),
				ds_grid_get(global.playerInv, 5, global.itemSelected),
				ds_grid_get(global.playerInv, 6, global.itemSelected),
				ds_grid_get(global.playerInv, 3, global.itemSelected),
				ds_grid_get(global.playerInv, 4, global.itemSelected),
				);
		ds_grid_set(global.playerInv, 7, global.itemSelected, true);
		for(i = 0; i < ds_grid_height(global.playerInv); i++) { //ds_grid_height used to be invEndAt. Issue!!
			if(ds_grid_get(global.playerInv, 7, i) == true 
			&& i != global.itemSelected
			&& ds_grid_get(global.playerInv, 5, i) == ds_grid_get(global.playerInv, 5, global.itemSelected)) {
				ds_grid_set(global.playerInv, 7, i, false);
			}
		}
	
	}*/

	else if(ds_grid_get(global.playerInv, 5, global.itemSelected) != "object" //unequip
			&& ds_grid_get(global.playerInv, 7, global.itemSelected) == true) {
		unequipItem(ds_grid_get(global.playerInv, 5, global.itemSelected));
		ds_grid_set(global.playerInv, 7, global.itemSelected, false);
	}	
}
