/// @description Instruction of flashlight
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;
image_angle = point_direction(x,y,mouse_x,mouse_y);

if(obj_player.flash_light_on){
	show_debug_message("ON");
}
else{
	show_debug_message("OFF");
}



