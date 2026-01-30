//accepting input
enter_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E")) 
			|| mouse_check_button_pressed(mb_left);
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || mouse_wheel_up();
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || mouse_wheel_down();


textbox_x =  global.cam_x + window_get_width/2 + textbox_width/4; //used to have global.camX & global.camY
textbox_y =  global.cam_y + window_get_height/2 + textbox_height;

//draw_set_font(font_smaller);

//setup
if(setup == false) {
	setup = true;
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through pages
	//page_number = array_length(text) --- now redundant line
	for(var _p = 0; _p < page_number; _p++) {
		//find out how many chars on page
		 text_length[_p] = string_length(text[_p]); 
		 text_x_offset[_p] = 48; //centring
	}
}

//not fdrawing characters that arent there
if(draw_char < text_length[page]) {
	draw_char += txt_spd; 
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//flip thru pages
if(enter_key) {
	//if typing is done
	if(draw_char == text_length[page]) {
		//next page
		if(page < page_number-1) {
			page++;
			draw_char = 0;
		}
		//destroy textbox
		else {
			//link text for options
			if(option_number > 0) {
				scr_create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();
		}
	}
	//if not done typing
	else {
		//fill out textbox
		draw_char = text_length[page]
	}
}



//get width and height of sprite
textbox_spr_w = sprite_get_width(textbox_spr);
textbox_spr_h = sprite_get_height(textbox_spr);

draw_set_colour(c_black);

//draw back of textbox
	//local variables to make it easier for me
var _txtb_x = textbox_x+text_x_offset[page];
var _txtb_y = textbox_y;
draw_sprite_ext(textbox_spr, 0, 
	_txtb_x, 
	_txtb_y, 
	textbox_width/textbox_spr_w,
	textbox_height/textbox_spr_h,
	0, c_white, 1)
	
	
	//options
if (draw_char = text_length[page] && page == page_number-1) {
	
	//option selection
	option_pos += down_key - up_key;
	option_pos = clamp(option_pos, 0, option_number-1);
	
	//draw wthe options
	var _op_space = 40; //space between option boxes
	var _op_bord = 25; //text border
	for(var _op = 0; _op < option_number; _op++)
	{
		//the option box
		//numbers and calculations are INCREDIBLY janky
		var _op_w = string_width(txt_options[_op]) + _op_bord*2;
		draw_sprite_ext(spr_menu, 0, _txtb_x+16,
			_txtb_y-_op_space*option_number+_op_space*_op,
			(_op_w/textbox_spr_w), ((_op_space-1)/textbox_spr_h),
			0, c_white, 1
			);
			
			//the arrow
			if (option_pos == _op) {
				draw_sprite(spr_option_selector, 0, _txtb_x,
					(_txtb_y-_op_space*option_number+_op_space*_op)+20)
			}
			
		//the option text
		draw_text(_txtb_x+_op_bord+1,
			_txtb_y-_op_space*option_number+_op_space*_op + _op_bord/3,
			txt_options[_op]
			);
	}
}

/*optionSections = textbox_x-/option_number;

	for(var i = 0; i < option_number; i++) {
		if(point_in_rectangle(mouse_x, mouse_y, textbox_x, textbox_y+optionSections*i, 
			textbox_x+textbox_width, (y+optionSections*i)+optionSections)) {
				option_pos = i;
			}
	}*/ //COME BACK TO THIS!!!!!!!!!!!!!!!!
	
//draw text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(_txtb_x+textbox_border, 
	_txtb_y+textbox_border,
	_drawtext, line_sep, line_width)
