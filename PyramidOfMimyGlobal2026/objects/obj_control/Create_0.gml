//default window size
//window_set_fullscreen(true);
window_center();


//setting default camera
view_camera[0] = view_camera[0];

if(room != rm_start) {
	start = true;
	layer_sequence_create("Sequences", 640, 360, seq_roomchangestart);
}