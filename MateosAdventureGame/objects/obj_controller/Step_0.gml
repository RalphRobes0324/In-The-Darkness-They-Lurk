/// @description Control of the game
// You can write your code in this editor

if(!startRound){// Checks if the round ended
	timer -= 1;//minus the time for transition
	if(timer < 0){//Checks time is done
		startRound = true;//Start round transition is done
		timer = saveTimer;//Save time
	}
}

	

if((timer > 0 && !startRound) || obj_player.hp <= 0  ){//Destroy Everybackground
	with(obj_e1){
		instance_destroy();//Destroy every enemy
	}
}


if(startRound && obj_player){//Start Round
	var pickSpawn;//Deccides which spawn
	if(room == rm_hallway_final){//Checks player spawn
		global.enemy_spawn_timer -= 1;//Minus delayer
		if(global.enemy_spawn_timer <= 0){//Start spawning
			pickSpawn = irandom_range(0,4);//range which spawns
			
			//Checks which enemy is spawning
			if(pickSpawn == 0 && !spawns1){
					instance_create_layer(1182, 1534, "Enemy", obj_e1); //spawn specific location
					//Flags Enemy has spawned
					spawns1 = true;
					spawns2 = false;
					spawns3 = false;
					spawns4 = false;
				}
				else if(pickSpawn == 1 && !spawns2  && obj_timer.playerHasMoved){
					instance_create_layer(498, 1028, "Enemy", obj_e1);//spawn specific location
					//Flags Enemy has spawned
					spawns1 = false;  
					spawns2 = true;
					spawns3 = false;	
					spawns4 = false;
				}
				else if(pickSpawn == 2 && !spawns3){
					instance_create_layer(1743, 1490, "Enemy", obj_e1);//spawn specific location
					//Flags Enemy has spawned
					spawns1 = false;
					spawns2 = false;
					spawns3 = true;	
					spawns4 = false;
			
			
				}
				else if(pickSpawn == 4 && !spawns4 && obj_timer.playerHasMoved){
					instance_create_layer(524, 645, "Enemy", obj_e1);//spawn specific location
					//Flags Enemy has spawned
					spawns1 = false;
					spawns2 = false;
					spawns3 = false;	
					spawns4 = true;
				}
				else{//No spawning
					//Flags Enemy no spawned
					spawns1 = false;
					spawns2 = false;
					spawns3 = false;	
					spawns4 = false;
					
				}
				//Adjust the Enemy size
				if(spawns1 || spawns2 || spawns3 || spawns4){
					obj_e1.image_yscale = 0.25;
					obj_e1.image_xscale = 0.25;
				}
				//reset the time
				global.enemy_spawn_timer = global.enemy_spawn_interval + obj_player.playerNights;
			}
	}
	if(room == rm_storageRoom_final){//Checks Player of they are in storage room
		global.enemy_spawn_timer -= 1;//Checks which enemy is spawning
		if(global.enemy_spawn_timer <= 0){//When delay is over
			pickSpawn = irandom_range(0,2)//Range of enemy to spawn
			//Picks location where enemy is going to spawn
			if(pickSpawn == 0 && !spawns1_STR){
					instance_create_layer(1029, 892, "Enemy", obj_e1);//spawn specific location
					
					//Flags Enemy has spawned
					spawns1_STR = true;
					spawns2_STR = false;
					
				}
				else if(pickSpawn == 1 && !spawns2_STR){
					instance_create_layer(585, 742, "Enemy", obj_e1);//spawn specific location
					
					//Flags Enemy has spawned
					spawns1_STR = false;
					spawns2_STR = true;

				}
				else{//no spawning
					//Flags Enemy no spawned
					spawns1_STR = false;
					spawns2_STR = false;

					
				}
				//Adjust the Enemy size
				if(spawns1_STR || spawns2_STR){
					obj_e1.image_yscale = 0.25;
					obj_e1.image_xscale = 0.25;
				}
				//Reset the timer
				global.enemy_spawn_timer = global.enemy_spawn_interval + obj_player.playerNights;
			}
	}
	
	if(room == rm_bathroom_final){//Checks Player of they are in bathroom
		global.enemy_spawn_timer -= 1;//Checks which enemy is spawning
		if(global.enemy_spawn_timer <= 0){//When delay is over
			pickSpawn = irandom_range(0,2);//Range of enemy to spawn
			//Picks location where enemy is going to spawn
			if(pickSpawn == 0 && !spawns1_BATH){
					instance_create_layer(763, 640, "Enemy", obj_e1);//spawn specific location
				
					//Flags Enemy has spawned
					spawns1_BATH = true;
					spawns2_BATH = false;
					
				}
			else if(pickSpawn == 1 && !spawns2_STR){
				instance_create_layer(1035, 716, "Enemy", obj_e1);//spawn specific location
				
				//Flags Enemy has spawned
				spawns1_BATH = false;
				spawns2_BATH = true;

			}
			
			else{//None spawned
				//Flags Enemy no spawned
				spawns1_BATH = false;
				spawns2_BATH = false;

			
			}
			//Adjust the Enemy size
			if(spawns1_BATH || spawns2_BATH){
				obj_e1.image_yscale = 0.25;
				obj_e1.image_xscale = 0.25;
			}
				//Reset the timer
			global.enemy_spawn_timer = global.enemy_spawn_interval + obj_player.playerNights;
		}
	}
	
	if(room == rm_bedroom_final){//Checks Player of they are in bedroom
		global.enemy_spawn_timer -= 1;//Checks which enemy is spawning
		if(global.enemy_spawn_timer <= 0){//When delay is over
			pickSpawn = irandom_range(0,2)//Range of enemy to spawn
			//Picks location where enemy is going to spawn
			if(pickSpawn == 0 && !spawns1_BED){
					instance_create_layer(958, 579, "Enemy", obj_e1);//spawn specific location
					//Flags Enemy has spawned
					spawns1_BED = true;
					spawns2_BED = false;
					
				}
				else if(pickSpawn == 1 && !spawns2_BED){
					instance_create_layer(1170, 716, "Enemy", obj_e1);//spawn specific location
					//Flags Enemy has spawned
					spawns1_BED = false;
					spawns2_BED = true;

				}
				else{//None spawned
					//Flags Enemy no  spawned
					spawns1_BED = false;
					spawns2_BED = false;

					
				}
				//Adjust the Enemy size
				if(spawns1_BED || spawns2_BED){
					obj_e1.image_yscale = 0.25;
					obj_e1.image_xscale = 0.25;
				}
					//Reset the timer
				global.enemy_spawn_timer = global.enemy_spawn_interval + obj_player.playerNights;
			}
	}
}






