
left_click = mouse_check_button_pressed(mb_left)
E = keyboard_check_pressed(ord("E"))

depth =- y

if(!instance_exists(obj_textbox)) {
	image_speed = 0;
	image_index = 0;
}

/*for(var i = 0; i < ds_grid_height(global.playerInv); i++) {
	if(ds_grid_get(global.playerInv, 0, i) == questItem &&
		ds_grid_get(global.playerInv, 1, i) >= questAmount
		&& questDone == false && takenQuest == questName) {
	questDone = true;
	}
}
//interaction

	if (point_in_rectangle(obj_player.x, obj_player.y, bbox_left-50,bbox_top-50,bbox_right+50,bbox_bottom+50)){
		 if ((E || (position_meeting(mouse_x, mouse_y, obj_NPC) && left_click)) && !instance_exists(obj_textbox)
			&& !instance_exists(obj_par_UI) && text_id != "null" && text_id != "") {
		
			if(hasQuest == true && questDone == true && questOver == false) {
				questOver = true;
						repeat(questAmount) {
							if(ds_grid_get(global.playerInv, 1, i) > 1) {
								ds_grid_set(global.playerInv, 1, i, 
								ds_grid_get(global.playerInv, 1, i) -1);
							} else {
								var _currentRow = i + 1;
								var _toRemove = i;
								for(j = _toRemove; j < ds_grid_height(global.playerInv) -1; j++)
								{
									ds_grid_set_grid_region(global.playerInv, global.playerInv, 0, _currentRow, global.playerInvWidth, _currentRow, 0, j);
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
						if(questReward == true) {
							addItem(global.playerInv, rewardName, rewardAmount, rewardDesc, rewardSprite, rewardScript, rewardType, rewardBonus, false);
						}
					}
			}*/
				NPCid = id;
				scr_create_textbox(text_id);
				
				image_speed = 1;
		//}
//}
