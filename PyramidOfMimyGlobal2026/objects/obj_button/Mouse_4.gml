if(myText == "Use [E]") {
		itemUse(ds_grid_get(global.playerInv, 4, global.itemSelected), ds_grid_get(global.playerInv, 6, global.itemSelected));
		trashItem();
	}
else if(myText == "Equip [E]") {
	equipItem(global.playerEquip,
			ds_grid_get(global.playerInv, 0, global.itemSelected),
			ds_grid_get(global.playerInv, 5, global.itemSelected),
			ds_grid_get(global.playerInv, 6, global.itemSelected),
			ds_grid_get(global.playerInv, 3, global.itemSelected),
			ds_grid_get(global.playerInv, 4, global.itemSelected),
			);
	ds_grid_set(global.playerInv, 7, global.itemSelected, true);
	for(i = 0; i < ds_grid_height(global.playerInv); i++) {
		if(ds_grid_get(global.playerInv, 7, i) == true 
		&& i != global.itemSelected
		&& ds_grid_get(global.playerInv, 5, i) == ds_grid_get(global.playerInv, 5, global.itemSelected)) {
			ds_grid_set(global.playerInv, 7, i, false);
		}
	}
	
}

else if(myText == "Unequip [E]") {
	unequipItem(ds_grid_get(global.playerInv, 5, global.itemSelected));
	ds_grid_set(global.playerInv, 7, global.itemSelected, false);
}

else if(myText == "Destroy [Q]") {
	if(ds_grid_get(global.playerInv, 7, global.itemSelected) == true) {
			
	} else {
		trashItem();
	}
}
