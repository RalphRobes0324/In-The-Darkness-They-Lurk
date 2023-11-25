/// @description Drawing a pause screen

//if(pause){//Checks if flag is true
//	draw_set_color(c_black);//set background black
//	draw_rectangle(0,0,room_width, room_height, 0 );//Draw over the screen
//	//Setting up text
//	draw_set_halign(fa_center);
//	draw_set_font(fnt_prototype_font);
//	draw_set_colour(c_white);
//	draw_text(65,0, "Game Paused");
//	//Fill is miss wholes after text is written
//	draw_set_colour(c_black);
//}


if (pause) {
    // Set background color
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, 0);

    // Set up text properties
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_prototype_font);
    draw_set_color(c_white);

   

    // Draw the "Game Paused" text
	text_x =  camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2;
	text_y = camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) / 2;
    draw_text(text_x, text_y, "Game Paused");
}





