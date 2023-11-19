/// @description Insert description here
// You can write your code in this editor



////////Displaying message when player next door
if(place_meeting(x,y,obj_player) && _check_door == false){//Checks Player in AoE
//////	//Checks Direction where Player is facing 

	if(obj_player.face_dir == LEFT ){
		instance_create_layer(x + 15, y, layer, obj_e_popup);
		show_debug_message("This is left");
		_check_door = true;
	}
	
	if(obj_player.face_dir == DOWN){
		instance_create_layer(x - 15 , y - 50, layer, obj_e_popup);
		show_debug_message("This is down");
		_check_door = true;
		}
		
}


////////Deletes instance when player leaves AoE
if(!place_meeting(x,y,obj_player) && _check_door == true){
	with(obj_e_popup){
		instance_destroy();
		}
	_check_door = false;
}



