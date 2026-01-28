
//name/type/bonus/sprite/script
function equipItem(_gridToAdd, _itemName, _itemType, _itemBonus, _itemSprite, _itemScript){
	//hypothetical equipment function:
	//equipItem("sword", "weapon", "+4", spr_sword, scr_sword);
	
	//weapons go in slot 1, armour goes in slot 2
	
	if(_itemType == "weapon") {
		ds_grid_set(_gridToAdd, 0, 0, _itemName);
		ds_grid_set(_gridToAdd, 1, 0, _itemType);
		ds_grid_set(_gridToAdd, 2, 0, _itemBonus);
		ds_grid_set(_gridToAdd, 3, 0, _itemSprite);
		ds_grid_set(_gridToAdd, 4, 0, _itemScript);
	} else {
		ds_grid_set(_gridToAdd, 0, 1, _itemName);
		ds_grid_set(_gridToAdd, 1, 1, _itemType);
		ds_grid_set(_gridToAdd, 2, 1, _itemBonus);
		ds_grid_set(_gridToAdd, 3, 1, _itemSprite);
		ds_grid_set(_gridToAdd, 4, 1, _itemScript);
	}
	
	return true;
}


function unequipItem(_itemType) {
	
	if(_itemType == "weapon") {
		ds_grid_set(global.playerEquip, 0, 0, "");
		ds_grid_set(global.playerEquip, 1, 0, "");
		ds_grid_set(global.playerEquip, 2, 0, -1);
		ds_grid_set(global.playerEquip, 3, 0, spr_blank);
		ds_grid_set(global.playerEquip, 4, 0, "");
	}
	
	if(_itemType == "armour") {
		ds_grid_set(global.playerEquip, 0, 1, "");
		ds_grid_set(global.playerEquip, 1, 1, "");
		ds_grid_set(global.playerEquip, 2, 1, -1);
		ds_grid_set(global.playerEquip, 3, 1, spr_blank);
		ds_grid_set(global.playerEquip, 4, 1, "");
	}
	
	return true;
}
