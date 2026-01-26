//check if away from mousex and mousey
distanceX = targetX - x;
distanceY = targetY - y;

if(distanceX > 5) {
	x++;
}
else if(distanceX < -5) {
	x--;
}
