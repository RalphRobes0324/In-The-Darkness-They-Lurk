/// @description Creating death animation
// You can write your code in this editor

if (done == 0){//check if lost all hp
	/********************Horizontal Collision**************/

	//Checks if with help of gamemaker function, players coord hits oWall (object you built)
	if(place_meeting(x+hsp,y,obj_wall)){
	
	
		//While user hitting the wall, this will stop user going into the wall
		while(!place_meeting(x+sign(hsp),y,obj_wall)){//This will stop/predecting player hitting the wall by moving player 3 pixel away from the
			x = x + sign(hsp); //This will decrease or increase 
		}
		hsp = 0;

	}
	x = x + hsp;//This will move character horizontal

	/********************Vertical Collision**************/

	//Checks if with help of gamemaker function, players coord hits oWall (object you built)
	if(place_meeting(x,y+vsp,obj_wall)){
		
		if( vsp > 0){
			done = 1;//death
			image_index = 0;//show frame death
	
			
			
		}
		//While user hitting the wall, this will stop user going into the wall
		while(!place_meeting(x,y+sign(vsp),obj_wall)){//This will stop/predecting player hitting the wall by moving player 3 pixel away from the
			y = y + sign(vsp); //This will decrease or increase 
		}
		vsp = 0;

	}
	y = y + vsp;//This will move character vertical
}

