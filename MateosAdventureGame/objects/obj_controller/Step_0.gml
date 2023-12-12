/// @description Insert description here
// You can write your code in this editor

if(!startRound){
	timer -= 1;
	if(timer < 0){
		startRound = true;
		timer = saveTimer;
	}

	
}
if(timer > 0 && !startRound ){
	obj_player.obj_flashlight = false; 
}





