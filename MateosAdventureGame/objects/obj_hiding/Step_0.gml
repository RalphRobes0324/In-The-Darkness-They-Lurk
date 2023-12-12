/// @description Checks player
// You can write your code in this editor



//Checks Player pressed e
if(keyboard_check_pressed(ord("E")) && _check_hiding){
	obj_player._is_hidding = !obj_player._is_hidding;//switch
}

if(obj_player._is_hidding){//Checks player is hidding
	obj_player.image_alpha = 0;// Checks Player is hidding
}
else{
	obj_player.image_alpha = 1;// checks Player is no longer hidding
}

if(obj_player._is_hidding){//Checks player is hiding
	if(_playerIsHiding > 0){//starts timer
		_playerIsHiding -= 1;//Subtract from the time
	}
	else{
		obj_player._is_hidding = false//Player is no longer hiding
		
	}
}

if(!obj_player._is_hidding){//Resets the time whe player is not hiding
	_playerIsHiding = _playerIsHidingSave;
}


////Displaying message when player next door
if(place_meeting(x, y, obj_player) && _check_hiding == false){
	_check_hiding = true;
	
}

////Deletes instance when player leaves AoE
if(!place_meeting(x,y,obj_player) && _check_hiding == true){
	_check_hiding = false;
}

