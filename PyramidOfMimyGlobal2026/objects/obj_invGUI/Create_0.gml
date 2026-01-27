textBorder = 22;
myItems = global.playerInv;
myColour = c_white;
isEmpty = false;
emptyMessage = "You have no items.";
noArmour = true;
noWeapon = true;
invSprite = spr_menu;
invWidth = 200;
invHeight = 400;

global.itemSelected = 0;
global.scrolledAmount = 0; //allows for scrolling
scrollPosition = 0;
global.invEndAt = min(ds_grid_height(myItems), floor((sprite_height - (textBorder * 3)) / 32));
invOnScreen = 0;

if(ds_grid_get(myItems, 0, 0) == 0) {
	invEndAt = 0;
	isEmpty = true;
}



alarm[0] = 1;
