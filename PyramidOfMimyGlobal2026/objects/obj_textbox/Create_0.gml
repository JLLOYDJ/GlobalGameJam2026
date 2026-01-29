//variables
textbox_width = 600;
textbox_height = 200;
textbox_border = 20;
textbox_spr = spr_menu;
line_sep = 24;
line_width = textbox_width - textbox_border*2;
page = 0;
page_number = 0;
text_x_offset[0] = 48;
depth = -9999;
type = 0;
textbox_x =  global.cam_x + window_get_width/2 + textbox_width/4; //used to have global.camX & global.camY
textbox_y =  global.cam_y + window_get_height/2 + textbox_height;

//text array
text[0] = "";
text_length[0] = string_length(text[0]);

//dictate how many chars are being drawn in the string
draw_char = 0;
txt_spd = 1;

//options during conversation
txt_options[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

//check if setup has bveen done, if not run some code
setup = false; 


enter_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E"));
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
