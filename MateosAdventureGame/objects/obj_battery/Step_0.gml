/// @description Battery action when flashlight in use

//Adjusting the offset
var offset_x = 32;
var offset_y = 32;


//Getting camera values
var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);

//Battery keep track
x = camera_x + offset_x;
y = camera_y + offset_y;

if(obj_player.flash_light_on){//Checks state of flashlight is on
	
	//Checks the battery state and change sprite based on the state of battery
	if(obj_player.flashlight_battery >= 85 && obj_player.flashlight_battery <= 100.50){
		image_index = 0;
	}
	else if(obj_player.flashlight_battery >= 70 && obj_player.flashlight_battery <= 85){
		image_index = 1;
	}
	else if(obj_player.flashlight_battery >= 50 && obj_player.flashlight_battery <= 70){
		image_index = 2;
	}
	else if(obj_player.flashlight_battery >= 30 && obj_player.flashlight_battery <= 50){
		image_index = 3;
	}
	else if(obj_player.flashlight_battery <= 20){
		image_index = 4;
	}
	else if(obj_player.flashlight_battery >= 0){
		image_index = 5;
	}
}
//If flashlight is off and its low show charging flashlight
if(!obj_player.flash_light_on && obj_player.flashlight_battery >= 0.0){
	image_index = 7;
}


//If flashlight is fully charge then show battery sprite full
if(!obj_player.flash_light_on && 
(obj_player.flashlight_battery == 100 || obj_player.flashlight_battery == 100.50)){
	image_index = 0;
}





