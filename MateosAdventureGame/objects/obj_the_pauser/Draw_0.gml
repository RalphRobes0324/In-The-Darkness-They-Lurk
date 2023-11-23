/// @description Drawing a pause screen

if(pause){//Checks if flag is true
	draw_set_color(c_black);//set background black
	draw_rectangle(0,0,room_width, room_height, 0 );//Draw over the screen
	//Setting up text
	draw_set_halign(fa_center);
	draw_set_font(fnt_prototype_font);
	draw_set_colour(c_white);
	draw_text(camera_get_view_width(view_camera[0])/2,
	camera_get_view_height(view_camera[0])/2, "Game Paused")
	//Fill is miss wholes after text is written
	draw_set_colour(c_black);
	
}





