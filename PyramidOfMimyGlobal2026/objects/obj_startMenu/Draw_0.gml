draw_sprite_ext(menuSprite, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw_set_font(font_main)
depth = -999

//measuring the height and width of the textbox dynamically

//auto sizing the textbox
//width
var _new_w = 0;
for(var i=0; i<op_length; i++)
{
	var _op_w = string_width(options[menu_level, i]);
	_new_w = max(_new_w, _op_w)
}
width = _new_w + op_border*2;
//height
height = op_border*2 + string_height(options[0,0]) + (op_length-1) * op_space;

//centring menu
x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2) - width/2;
y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) - height/2;


//setting text to align with top left
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var _i=0; _i<op_length; _i++)
{
	var _c = c_white
	if pos == _i {_c = c_yellow } //make current selection text yellow
	draw_text_color(x+op_border,
	y+op_border+op_space*_i,
	options[menu_level, _i],
	_c, _c, _c, _c, 1);
}

//draw_rectangle(x, y+optionSections*2, x+width, (y+optionSections*2)+optionSections, false)