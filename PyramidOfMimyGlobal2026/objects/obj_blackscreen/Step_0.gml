x = global.cam_x / 2;
y = global.cam_y / 2;

if(image_alpha < 1)
{
	image_alpha += fadespeed;
}
else if((image_alpha >= 1) && (alarmtripped == false))
{
	alarmtripped = true;
	image_alpha = 1;
	alarm_set(0, 60);
}