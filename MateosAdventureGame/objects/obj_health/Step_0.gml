/// @description Displaying the heart
// You can write your code in this editor

//Adjusting the offset
var offset_x = 1200;
var offset_y = 32;


//Getting camera values
var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);

//Battery keep track
x = camera_x + offset_x;
y = camera_y + offset_y;


//State of the hearts
if(obj_player.hp >= 45 && obj_player.hp <= 50){
	image_index = 0;
}
if(obj_player.hp >= 40 && obj_player.hp <= 45){
	image_index = 1;
}
if(obj_player.hp >= 35 && obj_player.hp <= 40){
	image_index = 2;
}
if(obj_player.hp >= 30 && obj_player.hp <= 35){
	image_index = 3;
}
if(obj_player.hp >= 25  && obj_player.hp <= 30){
	image_index = 4;
}
if(obj_player.hp >= 20 && obj_player.hp <= 25){
	image_index = 5;
}
if(obj_player.hp >= 15 && obj_player.hp <= 20){
	image_index = 6;
}
if(obj_player.hp >= 10 && obj_player.hp <= 15){
	image_index = 7;
}
if(obj_player.hp <= 10){
	image_index = 8;
}
