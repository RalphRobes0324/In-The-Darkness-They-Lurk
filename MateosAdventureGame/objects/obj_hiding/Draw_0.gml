/// @description Draw Text
// You can write your code in this editor
if(_check_hiding && !obj_player._is_hidding){//Display text when player is facing hiding spot
    // Set up text properties
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_prototype_font);
	draw_set_color(c_white);
    var text_x =  camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2;
	var text_y = camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) / 2;
	var sprite_x = text_x;
	var sprite_y = text_y + 150;
	draw_text_transformed(sprite_x, sprite_y, "Press 'E' to hide",3,3,0 );
}
if(obj_player._is_hidding){ //Display text when player is hiding
	// Set up text properties
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_prototype_font);
	draw_set_color(c_yellow);
    var text_x =  camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2;
	var text_y = camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) / 2;
	var sprite_x = text_x;
	var sprite_y = text_y + 150;
	draw_text_transformed(sprite_x, sprite_y, "Press 'E' to \n leave hiding",3,3,0 );
}





