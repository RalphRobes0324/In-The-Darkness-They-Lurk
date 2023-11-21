/// @description Insert description here
// You can write your code in this editor



if(place_meeting(x, y, obj_player) && _decor_check == false ){
	
	if(obj_player.face_dir == LEFT){
		instance_create_layer( obj_player.x,  obj_player.y - 25, layer, obj_e_popup);
		_decor_check = true;
	}
	else if(obj_player.face_dir == RIGHT){
		instance_create_layer( obj_player.x - 65,  obj_player.y - 25, layer, obj_e_popup);
		_decor_check = true;
	}
	else if(obj_player.face_dir == DOWN){
		instance_create_layer(obj_player.x - 30 , obj_player.y - 40, layer, obj_e_popup);
		_decor_check = true;
	}
	else if(obj_player.face_dir == UP){
		instance_create_layer(obj_player.x - 40 , obj_player.y - 20, layer, obj_e_popup);
		_decor_check = true;
	}	
}


if(!place_meeting(x,y,obj_player) && _decor_check == true){
	with(obj_e_popup){
		instance_destroy();
		}
	_decor_check = false;
}




