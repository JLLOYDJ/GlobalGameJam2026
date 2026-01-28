function scr_text(_text){
	//dynamically adds text to the array
	//scr_text("string") so you dont have to worry about array numbers
	text[page_number] = _text;
	page_number++;
}

function scr_options(_option, _link_id) {
	txt_options[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

function scr_game_text(_text_id) {
	//most game text passed in here
	switch(_text_id) {

		case "text id":
			scr_text("Output text 1");
			scr_text("Output text 2");
				scr_options("Option name", "option text id");
			break;
			
		case "interaction test":
			scr_text("You see a red box.");
				scr_options("Touch it", "touch");
				scr_options("Walk away", "cancel");
			break;
			
		case "touch":
			obj_InteractionTest.image_index = 1;
			scr_text("The box turns green.");
	}
}
			
function scr_create_textbox(_text_id){
		with(instance_create_depth(0,0,-999999, obj_textbox)){
			//text to be drawn
			/*scr_text("TESTING TESTING");
			scr_text("blahblahbalhblahblahbl ahblahblahblahblah lalalalalallalalalal lalalalalalalalalalala lalalalala");
			scr_text("...");*/
	
			scr_game_text(_text_id);
		}
}