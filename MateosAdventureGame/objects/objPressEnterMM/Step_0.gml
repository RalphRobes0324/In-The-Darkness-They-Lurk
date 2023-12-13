/// @description create sound effect
// You can write your code in this editor

if( mouse_check_button_pressed(mb_left)) {
	audio_play_sound(snd_btnClicked, 0, false);
}


if( mouse_x >= bbox_left && mouse_x <= bbox_right &&
	mouse_y >= bbox_top && mouse_y <= bbox_bottom) {
		audio_play_sound(snd_btnHover, 1,true);
		//audio_stop_sound(snd_btnHover);
}
else{
	audio_stop_sound(snd_btnHover);
}