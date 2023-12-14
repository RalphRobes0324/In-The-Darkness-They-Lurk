/// @description Draw background

if(!startRound){
	draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, 0);
	
	draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_prototype_font);
	draw_set_color(c_white);
    var text_x =  camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2;
	var text_y = camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) / 2;
	var sprite_x = text_x;
	var sprite_y = text_y + 100;
	var text_display = "Night: " + string(obj_player.playerNights);
	draw_text_transformed(text_x, text_y, text_display, 5, 5, 0);
	audio_play_sound(snd_WonARound, 1, false);
}






