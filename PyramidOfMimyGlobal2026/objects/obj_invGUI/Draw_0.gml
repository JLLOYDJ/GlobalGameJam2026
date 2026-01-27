/// @desc draw inv on screen


//draw_rectangle(boxleft,boxtop,boxright,boxbottom,20); //testing the box vars

draw_sprite_ext(invSprite, 0, boxleft, boxtop, 
				invWidth, invHeight, //may need to add back /get_sprite_height(invSprite) and change variable back
				0, c_white, 1);
draw_set_colour(myColour);
//draw_set_font(font_smaller);

draw_text(boxleft + textBorder, boxtop + textBorder, "Image");
draw_text(boxleft + 125, boxtop + textBorder, "Name");
draw_text(boxleft + 215, boxtop + textBorder, "Amount");

itemLeftStart = boxleft + 120;
itemTopStart = boxtop + 48;


if(!isEmpty) { //only draw items if theres items to draw
	for(var i = 0; i < global.invEndAt; i++) {
		for(var j = 0; j < global.playerInvWidth; j++) { //displaying information from the ds grid
			invOnScreen = i; 
			if(j == 0) { //name
				draw_text(itemLeftStart -30, itemTopStart + (i*32), ds_grid_get(myItems, 0, i + global.scrolledAmount));
			}
			if(j == 1) { //amount
				draw_text(itemLeftStart + 140, itemTopStart + (i*32), ds_grid_get(myItems, 1, i + global.scrolledAmount));
			}
			if(j == 3) { //sprite
				draw_sprite(ds_grid_get(myItems, j, i + global.scrolledAmount), 0, boxleft + 24, itemTopStart + (i*32));
			}
		}
	}
	
	//drawing selector box
	draw_rectangle(boxleft+textBorder, 
		itemTopStart + ((global.itemSelected - global.scrolledAmount)*32), 
		boxright - textBorder, 
		itemTopStart + ((global.itemSelected - global.scrolledAmount)*32)+32, 
		true
		);
}


//drawing description box next to inv
draw_sprite_ext(invSprite, 0, 
			boxright, boxbottom-itemDescHeightPure, 
			itemDescWidth,itemDescHeight, //may need to add back / get_sprite_height()
			0, c_white, 1);
			

//writing descriptions
if(isEmpty) {
	draw_text_ext(boxright + textBorder, 
	boxbottom-itemDescHeightPure + textBorder, 
	emptyMessage, 32, itemDescWidth - textBorder);
} else {
	draw_text_ext(boxright + textBorder, 
	boxbottom-itemDescHeightPure + textBorder, 
	ds_grid_get(myItems, 2, global.itemSelected), 24, 
	itemDescWidthPure - textBorder);
}

//drawing equipment box above inv
/*draw_sprite(spr_equipmentBox, 0, 
				camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2),
			/bbox_top - sprite_get_yoffset(spr_equipmentBox));

//drawing equipment box text and boxes
draw_text(bbox_left + textBorder, bbox_top - sprite_get_height(spr_equipmentBox) + textBorder, "Equipment");
draw_text(bbox_right - 125, bbox_top - sprite_get_height(spr_equipmentBox) + textBorder, "Item Bonus");

draw_rectangle(bbox_left + textBorder,
				bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 28,
				bbox_left + textBorder + 32,
				bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 28 + 32,
				true);
draw_rectangle(bbox_left + textBorder,
				bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 72,
				bbox_left + textBorder + 32,
				bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 72 + 32,
				true);

//making sure the bonus text and plus sign doesnt display if there is nothing equipped
var _aBonus = "+"+string(ds_grid_get(global.playerEquip, 2, 1));
var _wBonus = "+"+string(ds_grid_get(global.playerEquip, 2, 0));
if(_aBonus == "+-1")
{
	_aBonus = "";
}
if(_wBonus == "+-1")
{
	_wBonus = "";
}
				
//displaying an equipped weapon
if(noWeapon == false) {
	//0=name //2=bonus //3=sprite
	draw_text(bbox_left + textBorder + 42, 
			bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 32,
			ds_grid_get(global.playerEquip, 0, 0));
	draw_text(itemLeftStart + 100,
			bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 32,
			_wBonus);
	draw_sprite(ds_grid_get(global.playerEquip, 3, 0),
				0, bbox_left + textBorder,
				bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 28);
}

//same for armour
if(noArmour == false) {
	//0=name //2=bonus //3=sprite
	draw_text(bbox_left + textBorder + 42, 
			bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 76,
			ds_grid_get(global.playerEquip, 0, 1));
	draw_text(itemLeftStart + 100,
			bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 76,
			_aBonus);
	draw_sprite(ds_grid_get(global.playerEquip, 3, 1),
				0, bbox_left + textBorder,
				bbox_top - sprite_get_height(spr_equipmentBox) + textBorder + 72);
}
				
//highlights equipment if it is equipped
for(i = 0; i < ds_grid_height(myItems); i++) {
	if(ds_grid_get(myItems, 7, i) == true 
		&& itemTopStart + (i-global.scrolledAmount)*32 > bbox_top + textBorder
		&& itemTopStart + (i-global.scrolledAmount)*32 < 
		bbox_bottom - (sprite_get_height(spr_equippedBar) + textBorder)) {
		draw_sprite_ext(spr_equippedBar, 0,
						bbox_left+textBorder,
						itemTopStart + (i-global.scrolledAmount)*32,
						1, 1, 0, c_white, 0.5);
	}
}

//drawing stat box
draw_sprite(spr_itemBox, 0, 
			bbox_left - sprite_get_xoffset(spr_itemBox), 
			camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) + 25);
			
			
//writing stats
//player stats are: pLVL, pEXP, pSTR, pDEX, pINT, pCON, pHP, pSprint, pCooldown pToHit, pAC
draw_text(bbox_left - 225, 
		bbox_top + textBorder + 50,
		"Statistics");
draw_text(bbox_left -100,
		bbox_top + textBorder + 50,
		"LVL: " + string(pLVL));
//if weapon is equipped
if(ds_grid_get(global.playerEquip, 0, 0) != "") {
	draw_text(bbox_left - 225, bbox_top +textBorder*2+60, 
	"ATTK: +" + string(ds_grid_get(global.playerEquip, 2, 0) + floor((pMain-10)/2)));
} else {
	draw_text(bbox_left - 225, bbox_top +textBorder*2+60, "ATTK: +" + string(floor((pMain-10)/2)));
}
	
//if armour is equipped
//if(noArmour == false) {
	//draw_text(bbox_left - 225, bbox_top +textBorder*3+60, "AC: "+string(pAC));
//} else {
	draw_text(bbox_left - 225, bbox_top +textBorder*3+60, "AC: "+string(pAC));
//}
draw_text(bbox_left - 225, bbox_top +textBorder*4+60, "EXP: "+string(pEXP)+"/"+string(pEXPcap));

draw_text(bbox_left - 225, 
		bbox_top +textBorder*5+70, 
		"STR: "+string(pSTR)+"  (+"+string(floor((pSTR - 10)/2))+")");
draw_text(bbox_left - 225, 
		bbox_top +textBorder*6+70, 
		"DEX: "+string(pDEX)+"  (+"+string(floor((pDEX - 10)/2))+")");
draw_text(bbox_left - 225, 
		bbox_top +textBorder*7+70, 
		"INT: "+string(pINT)+"  (+"+string(floor((pINT - 10)/2))+")");
draw_text(bbox_left - 225, 
		bbox_top +textBorder*8+70, 
		"CON: "+string(pCON)+"  (+"+string(floor((pCON - 10)/2))+")");*/
