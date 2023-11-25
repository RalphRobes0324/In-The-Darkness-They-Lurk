/// @description Enemy Action

if(!obj_the_pauser.pause){
	switch(state){
		case e_state.idle:
		{
			hsp = 0;
			vsp = 0;
			if(distance_to_object(obj_player) < 30){
				state = e_state.chase;
			}
		}
		break;
		case e_state.chase:
		{
			var dirX = sign(obj_player.x - x);
			var dirY = sign(obj_player.y - y);
			hsp = dirX * 2;
			vsp = dirY * 2;
			if(distance_to_object(obj_player) >  50) {
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
if(hp <= 0){ //checks enemy is dead
	instance_destroy();//if dead, delete that instance
}



