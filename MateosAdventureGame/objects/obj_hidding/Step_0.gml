/// @description Checks player
// You can write your code in this editor

//Checks Player pressed e
if(keyboard_check_pressed(ord("E"))){
	obj_player._is_hidding = !obj_player._is_hidding;//switch
}

if(obj_player._is_hidding){//Checks player is hidding
	obj_player.image_alpha = 0;// Checks Player is hidding
}
else{
	obj_player.image_alpha = 1;// checks Player is no longer hidding
}

////Displaying message when player next door
if(place_meeting(x, y, obj_player) && _check_hidding == false){
	instance_create_layer( obj_player.x,  obj_player.y - 250, layer, obj_e_popup);
	_check_hidding = true;
	
}

////Deletes instance when player leaves AoE
if(!place_meeting(x,y,obj_player) && _check_hidding == true){
	with(obj_e_popup){
		instance_destroy();
		}
	_check_hidding = false;
}

