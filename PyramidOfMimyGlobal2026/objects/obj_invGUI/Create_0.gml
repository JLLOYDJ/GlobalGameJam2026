textBorder = 22;
myItems = global.playerInv;
myColour = c_white;
isEmpty = false;
emptyMessage = "You have no items.";
noArmour = true;
noWeapon = true;
invSprite = spr_menu;

invWidthPure = 300;
invHeightPure = 300;
invWidth = invWidthPure/sprite_get_width(invSprite);
invHeight = invHeightPure/sprite_get_height(invSprite);
itemDescWidthPure = 250;
itemDescHeightPure = 250;
itemDescWidth = itemDescWidthPure/sprite_get_width(invSprite);
itemDescHeight = itemDescHeightPure/sprite_get_height(invSprite);

global.itemSelected = 0;
global.scrolledAmount = 0; //allows for scrolling
scrollPosition = 0;
global.invEndAt = min(ds_grid_height(myItems), floor((invHeightPure - (textBorder * 3)) / 32));
invOnScreen = 0;

if(ds_grid_get(myItems, 0, 0) == 0) {
	invEndAt = 0;
	isEmpty = true;
}

//box around the inventory
boxleft = global.inv_x;
boxtop = global.inv_y-invHeightPure;
boxright = global.inv_x+invWidthPure;
boxbottom = global.inv_y;

alarm[0] = 1;
