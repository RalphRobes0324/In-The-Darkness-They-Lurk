/// @description Instruction of flashlight
// You can write your code in this editor

//Adjust the flashlight based on direction of player
if(obj_player.face_dir == DOWN){
	x = obj_player.x;
	y =  obj_player.y;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}

else{
	x = obj_player.x;
	y =  obj_player.y - obj_player.sprite_height/2 ;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}




