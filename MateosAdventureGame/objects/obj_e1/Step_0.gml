/// @description Enemy Action
if(!obj_the_pauser.pause){//Checks game paused
	switch(state){//Checks state of enemy
		case e_state.idle://idle state
		{
			hsp = 0;//Set hsp to 0
			vsp = 0; //vsp to 0
			if(distance_to_object(obj_player) < 1000){//checks distance player object if can chase
				state = e_state.chase;//change state to chase
			}
		}
		break;
		case e_state.chase://chase state
		{
			var dirX = sign(obj_player.x - x);//left or right desicion
			var dirY = sign(obj_player.y - y);//up or down desicion
			hsp = dirX; //set as hsp
			vsp = dirY; //set as vsp
			if(distance_to_object(obj_player) >  30) {//checks is no longer in line of sight
				state = e_state.idle; //change state to idle
			}
		}
		break;
	}
	//Collision Checks
	if(place_meeting(x + hsp, y, obj_wall)){//Checks player hit wall on x-axis
		hsp = 0; //set x speed to 0
	}
	if(place_meeting(x,y + vsp, obj_wall)){//Checks player hit wall on y-axis
		vsp = 0; //set y speed to 0
	}

	//Move player in game
	x += hsp;
	y += vsp;
	
	////checks state enemy being hurt
	if(!place_meeting(x,y,obj_flashlight) && !obj_player.flash_light_on){
		image_blend = c_white;//not hurt
	}
	else if(!place_meeting(x,y,obj_flashlight) && obj_player.flash_light_on){
		image_blend = c_white;//not hurt
	}
	else if(place_meeting(x,y,obj_flashlight) && obj_player.flash_light_on && ( obj_player.flashlight_battery > 0 &&  obj_player.flashlight_battery <= 100)){
		image_blend = c_red // hurt
	}
	else{ //fail safe
		image_blend = c_white;//not hurt
	}

	//checks enemy is dead
	if(hp <= 0){ 
		instance_destroy();//if dead, delete that instance
		show_debug_message("dead")
	}
}





