global.playerInvWidth = 8;
global.playerInvHeight = 12;

global.inv_x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
global.inv_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);


//using data structure grid to store information in the inventory
// grid will go like Name/amount/desc/sprite/script along x axis and items along y axis
global.playerInv = ds_grid_create(global.playerInvWidth, 1);
//making a ds grid to store information about equipped items
//name/type/bonus/sprite/script
global.playerEquipWidth = 5;
global.playerEquip = ds_grid_create(global.playerEquipWidth, 2);
equipItem(global.playerEquip, "Sword", "weapon", -1, spr_blank, "");


//addItem(global.playerInv, "Stupid sword", 1, "sword of get absolutely fucked up", spr_sword, handaxe(), "weapon", 10, false);
/*addItem(global.playerInv, "Magic Orb", 1, "It glows", spr_testBall, "", "armour", 14, false);
addItem(global.playerInv, "Circle", 1, "It is a circle", spr_testBall, "", "object", 2, false);
addItem(global.playerInv, "Red ball", 1, "It's a red ball", spr_testBall, handaxe(), "weapon", 9, false);
addItem(global.playerInv, "Bathroom tile", 1, "Where did you get this?", spr_isoSquares, "", "armour", 6, false);
addItem(global.playerInv, "Square", 2, "It's a shape", spr_isoSquares, "", "armour", 7, false);
addItem(global.playerInv, "Circle again", 2, "shapes", spr_testBall, club(), "weapon", 8, false);
addItem(global.playerInv, "Cube", 5, "It glows", spr_square, "", "armour", 5, false);
addItem(global.playerInv, "Little guy", 1, "It glws", spr_tinyPlayer, "", "weapon", 99, false);
addItem(global.playerInv, "Box", 22, "It gows", spr_square, "", "armour", 0, false);
addItem(global.playerInv, "Homunculus", 1, "It glow", spr_tinyPlayer, "", "weapon", 1, false);
addItem(global.playerInv, "Voodoo doll", 6, "I glows", spr_tinyPlayer, "", "armour", 4, false);
addItem(global.playerInv, "The Orb", 1, "Itglows", spr_testBall, "", "weapon", 6, false);*/

hotbarMade = false;
