/// @description Flashlight Light event
// You can write your code in this editor
var _mouse_left_click = mouse_check_button(mb_left);

if(_mouse_left_click && flash_light == false){
	flash_light = true;
}
if(_mouse_left_click && flash_light == true){
	flash_light = false;
}






