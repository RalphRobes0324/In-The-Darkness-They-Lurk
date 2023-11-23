/// @description Drawing a pause screen

if(pause){
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width, room_height, 0 );
	draw_set_halign(fa_center);
	draw_set_font(fnt_prototype_font);
	draw_set_colour(c_white);
	draw_text(65,0, "Game Paused");
	draw_set_colour(c_black);
}






