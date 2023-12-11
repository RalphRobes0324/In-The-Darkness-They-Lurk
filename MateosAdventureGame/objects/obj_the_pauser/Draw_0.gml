/// @description Drawing a pause screen

if (pause) {
    // Set background color
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, 0);

    // Set up text properties
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_prototype_font);
	draw_set_color(c_white);
    var text_x =  camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2;
	var text_y = camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) / 2;
	var sprite_x = text_x;
	var sprite_y = text_y + 100;
	draw_text_transformed(text_x, text_y, "Game Paused", 5, 5, 0);
	draw_set_color(c_red);
	draw_text_transformed(sprite_x, sprite_y, "Press 'Esc' to Unpause",3,3,0 );
	draw_set_color(c_yellow);
	sprite_x = text_x;
	sprite_y = text_y + 150;
	draw_text_transformed(sprite_x, sprite_y, "Press 'Q' to Quit",3,3,0 );
	
}





