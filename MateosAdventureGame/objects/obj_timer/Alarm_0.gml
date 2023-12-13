/// @description Timer tick
// You can write your code in this editor

if(playerHasMoved){
	t_mil -= 1;
}

if(t_mil == -1){// Reduced the seconds by one
	t_mil = 9;
	t_sec -= 1;
}

if(t_sec == -1){ //Reduced the minuate by one
	t_sec = 59;
	t_min -= 1;
}

//Make sure timer dosen't tick if at 0;
if (!(t_sec == 0 && t_min == 0 && t_min == 0)){
	alarm[0] = 6;
}else{
	//When timer ends
	if(instance_exists(obj_player)){
		alarm[0] = 6;
		room_restart();
		show_debug_message("New Round")
		obj_player.playerNights += 1;
		t_min = save_Tmin;
		t_sec = save_Tsec;
		t_mil = save_Tmill; //tenth of a second
		playerHasMoved = false;
		obj_controller.startRound = false;
	}
} 