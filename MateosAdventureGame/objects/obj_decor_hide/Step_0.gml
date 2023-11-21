/// @description Action When Player Interacts
var _press_e = keyboard_check(ord("E"));// Gets e if 
if(place_meeting(x, y, obj_player) && _press_e && !instance_exists(obj_under_bed_tranistion)){
	var _inst  = instance_create_depth(0,0, -9999, obj_under_bed_tranistion);
	_inst.target_x = target_x;//Go to player's x in new room
	_inst.target_y = target_y;//Go to player's y in new room
	_inst.target_rm = target_rm;//Go to new room
	_inst.target_face_dir = target_face_dir; //Forces Player face Direction they are going
	obj_player.player_hidding = !obj_player.player_hidding;//Change decision
}
	


//Displaying message when player next door
if(place_meeting(x, y, obj_player) && go_bed == false){

	if(obj_player.face_dir == LEFT && obj_player.player_hidding == false){
		instance_create_layer( obj_player.x,  obj_player.y - 25, layer, obj_e_popup);
		go_bed = true;
	}
	else if(obj_player.face_dir == RIGHT  && obj_player.player_hidding == false){
		instance_create_layer( obj_player.x - 65,  obj_player.y - 25, layer, obj_e_popup);
		go_bed = true;
	}
	else if(obj_player.face_dir == DOWN  && obj_player.player_hidding == false){
		instance_create_layer(obj_player.x - 30 , obj_player.y - 40, layer, obj_e_popup);
		go_bed = true;
	}
	else if(obj_player.face_dir == UP && obj_player.player_hidding == false){
		instance_create_layer(obj_player.x - 40 , obj_player.y - 20, layer, obj_e_popup);
		go_bed = true;
	}
	
	if(obj_player.player_hidding == true){
		instance_create_layer( obj_player.x , obj_player.y -50 , layer, obj_e_popup);
		go_bed = true;
	}
}

//Deletes instance when player leaves AoE
if(!place_meeting(x,y,obj_player) && go_bed == true){
	with(obj_e_popup){
		instance_destroy();
		}
	go_bed = false;
}






