/// @description Player's Action
if(keyboard_check_pressed(vk_escape)){//Checks Player pressed escape
	if(!pause){//Checks flag is false
		pause = true;//set flag true
		instance_deactivate_all(true);//stop all moving objects
	}
	else{
		pause = false;//set flag false
		instance_activate_all();//start all moving objects
	}
}

if(pause){
	if(keyboard_check(ord("Q"))){
		pause = false
		room_goto(MainMenu);
	}
}
