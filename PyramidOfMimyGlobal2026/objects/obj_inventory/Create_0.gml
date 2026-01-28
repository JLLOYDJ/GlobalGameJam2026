global.playerInvWidth = 4;

global.inv_x = camera_get_view_x(view_camera[0]);
global.inv_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);


//using data structure grid to store information in the inventory
// grid will go like Name/amount/desc/sprite/script along x axis and items along y axis
//required info: Name/Desc/Sprite/Script
global.playerInv = ds_grid_create(global.playerInvWidth, 1);
//making a ds grid to store information about equipped items
//name/type/bonus/sprite/script
global.playerEquipWidth = 5; //IGNORE THESE
global.playerEquip = ds_grid_create(global.playerEquipWidth, 2);


openInv = keyboard_check_pressed(ord("i"));
closeInv = keyboard_check_pressed(vk_escape);
canOpen = !instance_exists(obj_invGUI) && !instance_exists(obj_par_UI)

addItem(global.playerInv, "Stupid sword", "sword of get absolutely fucked up", spr_option_selector, "");
/*addItem(global.playerInv, "Magic Orb", 1, "It glows", spr_player, "", "armour", 14, false);
addItem(global.playerInv, "Circle", 1, "It is a circle", spr_redSquare, "", "object", 2, false);
addItem(global.playerInv, "Red ball", 1, "It's a red ball", spr_redSquare, "", "weapon", 9, false);
addItem(global.playerInv, "Bathroom tile", 1, "Where did you get this?", spr_option_selector, "", "armour", 6, false);
addItem(global.playerInv, "Square", 2, "It's a shape", spr_player, "", "armour", 7, false);
addItem(global.playerInv, "Circle again", 2, "shapes", spr_redSquare, "", "weapon", 8, false);
addItem(global.playerInv, "Cube", 5, "It glows", spr_button, "", "armour", 5, false);
addItem(global.playerInv, "Little guy", 1, "It glws", spr_option_selector, "", "weapon", 99, false);
addItem(global.playerInv, "Box", 22, "It gows", spr_redSquare, "", "armour", 0, false);
addItem(global.playerInv, "Homunculus", 1, "It glow", spr_player, "", "weapon", 1, false);
addItem(global.playerInv, "Voodoo doll", 6, "I glows", spr_player, "", "armour", 4, false);
addItem(global.playerInv, "The Orb", 1, "Itglows", spr_player, "", "weapon", 6, false);*/

hotbarMade = false;
