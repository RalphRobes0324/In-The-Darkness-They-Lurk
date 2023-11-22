/// @description Action When Player Interacts
var _press_e = keyboard_check(ord("E"));// Gets e if 

//Checks if player in area of effect, cehcks player pressed e, and checks there was no prior layer
if (place_meeting(x, y, obj_player) && _press_e && !instance_exists(obj_closet_transition)){
	var _inst = instance_create_depth(0,0, -9999, obj_closet_transition);//Creating the layer
	_inst.target_x = target_x; //Go to player's x in new room
	_inst.target_y = target_y; //Go to player's y in new room
	_inst.target_rm = target_rm; //Go to new room
	_inst.target_face_dir = target_face_dir; //Forces Player face Direction they are going
	obj_player.in_closet = !obj_player.in_closet;
	show_debug_message(obj_player.in_closet);
}


//Displaying message when player next door
if(place_meeting(x, y, obj_player) && go_closet == false){

	if(obj_player.face_dir == LEFT && obj_player.in_closet == false){
		instance_create_layer( obj_player.x,  obj_player.y - 25, layer, obj_e_popup);
		go_closet = true;
	}
	else if(obj_player.face_dir == RIGHT  && obj_player.in_closet == false){
		instance_create_layer( obj_player.x - 65,  obj_player.y - 25, layer, obj_e_popup);
		go_closet = true;
	}
	else if(obj_player.face_dir == DOWN  && obj_player.in_closet == false){
		instance_create_layer(obj_player.x - 30 , obj_player.y - 40, layer, obj_e_popup);
		go_closet = true;
	}
	else if(obj_player.face_dir == UP && obj_player.in_closet == false){
		instance_create_layer(obj_player.x - 40 , obj_player.y - 20, layer, obj_e_popup);
		go_closet = true;
	}
	
	if(obj_player.in_closet == true){
		instance_create_layer( obj_player.x , obj_player.y -50 , layer, obj_e_popup);
		go_closet = true;
	}
}

//Deletes instance when player leaves AoE
if(!place_meeting(x,y,obj_player) && go_closet == true){
	with(obj_e_popup){
		instance_destroy();
		}
	go_closet = false;
}



