width = 128;
height = 208;
op_border = 20;
op_space = 30;
pos = 0;
global.window_size = 800;
menuSprite = spr_menu2;
startRoom = rm_ballroom;
optionSections = 0


#region start menu 
options[0,0] = "Start Game";
options[0,1] = "Volume";
options[0,2] = "Fullscreen: OFF";
options[0,3] = "Credits";
options[0,4] = "Exit";

//options[1,0] = "Volume";
//options[1,1] = "Window Size";
//options[1,2] = "Back";

options[2,0] = "1280 x 720 (default)";
options[2,1] = "1920 x 1080";
options[2,2] = "Fullscreen";
options[2,3] = "Back to settings";

options[1,0] = "Volume: MAX";
options[1,1] = "100%"
options[1,2] = "75%";
options[1,3] = "50%"
options[1,4] = "25%"
options[1,5] = "OFF"
options[1,6] = "Back"
#endregion

op_length = 0;

//making sure its the correct menu
menu_level = 0
