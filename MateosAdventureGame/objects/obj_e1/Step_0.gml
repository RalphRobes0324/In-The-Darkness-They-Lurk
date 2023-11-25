/// @description Enemy Action

if(!obj_the_pauser.pause){
	image_index = 0;
	switch(state){
		case e_state.idle:
		{
			hsp = 0;
			vsp = 0;
			if(distance_to_object(obj_player) < 20){
				state = e_state.chase;
			}
		}
		break;
		case e_state.chase:
		{
			var dirX = sign(obj_player.x - x);
			var dirY = sign(obj_player.y - y);
			hsp = dirX;
			vsp = dirY;
			if(distance_to_object(obj_player) >  30) {
				state = e_state.idle;
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
}

//checks state enemy being hurt
if(!place_meeting(x,y,obj_flashlight) && !obj_player.flash_light_on){
	image_index = 0;//not hurt
}
else if(!place_meeting(x,y,obj_flashlight) && obj_player.flash_light_on){
	image_index = 0;//not hurt
}
else if(place_meeting(x,y,obj_flashlight) && obj_player.flash_light_on){
	image_index = 1;// hurt
}
else{ //fail safe
	image_index = 0;//not hurt
}

//checks enemy is dead
if(hp <= 0){ 
	instance_destroy();//if dead, delete that instance
}



