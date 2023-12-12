/// @description Enemy Action
if(!obj_the_pauser.pause){//Checks game paused
	if(!obj_player._is_hidding){// Checks Player is hidding
		switch(state){//Checks state of enemy
			case e_state.idle://idle state
			{
				hsp = 0;//Set hsp to 0
				vsp = 0; //vsp to 0
				if(distance_to_object(obj_player) < 500){//checks distance player object if can chase
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
		x += hsp * 2;
		y += vsp * 2;
	
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
	}
	else{//Player is hiding
		var randomDir = irandom_range(1,10);//picks a number between 1 -10
		
		if(randomDir % 2 = 0){//checks if even number
			
			//Give new y direction
			var new_y = y + patrol_speed * patrol_dirY ;
			if(!place_meeting(x, new_y, obj_wall)){//enemy not hit wall on y axis
				y = new_y;//Gives new direction enemy
			}
			else{//if enemy hits wall
				patrol_dirY *= -1;//goes other direction
			}
		}
		else{//Odd number
			//Give new x direction
			var new_x = x + patrol_speed * patrol_dirX ;
			if(!place_meeting(new_x, y, obj_wall)){ //enemy not hit wall on x axis
				x = new_x;//Gives new direction enemy
			}
			else{//if enemy hits wall
				patrol_dirX *= -1;//goes other direction
			}
		}
	}

	//checks enemy is dead
	if(hp <= 0){ 
		instance_destroy();//if dead, delete that instance
		show_debug_message("dead")
	}
}





