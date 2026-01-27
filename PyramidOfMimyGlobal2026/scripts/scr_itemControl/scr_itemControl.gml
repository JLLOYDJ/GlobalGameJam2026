//add an item to a grid
function addItem(_gridToAdd, _itemName, _itemDesc, _itemSprite, _itemScript) {
	//case 1- already in inventory 
	//is it equipment? if not stack
	/*if(_itemStatus == "object") {
		for(i = 0; i < ds_grid_height(_gridToAdd); i++) 
		{
			if(ds_grid_get(_gridToAdd, 0, i) == _itemName) {
				ds_grid_set(_gridToAdd, 1, i, ds_grid_get(_gridToAdd, 1, i)	+ _itemAmount);
				return true;
			}
		}
	}*/ //NO LONGER NEED ITEM AMOUNTS OR STACKING
	
	//case 2 - its not in the inventory
	if(ds_grid_get(_gridToAdd, 0, 0) != 0) {
		ds_grid_resize(_gridToAdd, global.playerInvWidth, ds_grid_height(_gridToAdd)+1);
	}
	
	//filling out the grid spot
	itemSpot = ds_grid_height(_gridToAdd) - 1;
	ds_grid_set(_gridToAdd, 0, itemSpot, _itemName);
	ds_grid_set(_gridToAdd, 1, itemSpot, _itemDesc);
	ds_grid_set(_gridToAdd, 2, itemSpot, _itemSprite);
	ds_grid_set(_gridToAdd, 3, itemSpot, _itemScript);
	
	return true;

}


function trashItem( ) {
	//case 1 - only 1 item in inventory
	if(ds_grid_height(global.playerInv) == 1) {
		if(ds_grid_get(global.playerInv, 1, 0) > 1) {
			ds_grid_set(global.playerInv, 1, 0, (ds_grid_get(global.playerInv, 1, 0) -1));
		} else {
			for (i = 0; i < global.playerInvWidth; i++)
			{
				ds_grid_set(global.playerInv, i, 0, 0);
			}
		}
	}
	
	//case 2 - everything else
	else {
		if(ds_grid_get(global.playerInv, 1, global.itemSelected) > 1) {
			ds_grid_set(global.playerInv, 1, 
			global.itemSelected, 
			ds_grid_get(global.playerInv, 1, 
			global.itemSelected) -1);
		} else {
			var _currentRow = global.itemSelected + 1;
			var _toRemove = global.itemSelected;
			for(i = _toRemove; i < ds_grid_height(global.playerInv) -1; i++)
			{
				ds_grid_set_grid_region(global.playerInv, global.playerInv, 0, _currentRow, global.playerInvWidth, _currentRow, 0, i);
				_currentRow += 1;
			}
			ds_grid_resize(global.playerInv, global.playerInvWidth, ds_grid_height(global.playerInv) -1);
			if(global.scrolledAmount > 0) {
				--global.scrolledAmount;
			}
			if(global.itemSelected > 0) {
				--global.itemSelected;
			}
		}
	}
	
}


function pickupVariables(_id, _name, _amount, _desc, _sprite, _script, _status, _bonus) {
	_id.itemName = _name;
	_id.itemAmount = _amount;
	_id.itemDesc = _desc;
	_id.itemSprite = _sprite;
	_id.itemScript = _script;
	_id.itemStatus = _status;
	_id.itemBonus = _bonus;
	
}


function itemUse(_itemScriptType, _itemBonus){
	switch(_itemScriptType) {
		case "healing":
		pHP += _itemBonus
		break;
	}
	
}
