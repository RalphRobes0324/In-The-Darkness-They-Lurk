/// @description Insert description here
// You can write your code in this editor

if(!startRound){
	timer -= 1;
	if(timer < 0){
		startRound = true;
		timer = saveTimer;
	}
}

	

if((timer > 0 && !startRound) || obj_player.hp <= 0  ){
	with(obj_e1){
		instance_destroy();
	}
}


if(startRound){
	var pickSpawn;
	if(room == rm_hallway_final){
		global.enemy_spawn_timer -= 1;
		if(global.enemy_spawn_timer <= 0){
			pickSpawn = irandom_range(0,4);
			if(pickSpawn == 0 && !spawns1){
					instance_create_layer(1182, 1534, "Enemy", obj_e1);
					show_debug_message("SPAWN1_HALL");
					spawns1 = true;
					spawns2 = false;
					spawns3 = false;
					spawns4 = false;
				}
				else if(pickSpawn == 1 && !spawns2  && obj_timer.playerHasMoved){
					instance_create_layer(498, 1028, "Enemy", obj_e1);
					show_debug_message("SPAWN2_HALL");
					spawns1 = false;  
					spawns2 = true;
					spawns3 = false;	
					spawns4 = false;
				}
				else if(pickSpawn == 2 && !spawns3){
					instance_create_layer(1743, 1490, "Enemy", obj_e1);
					show_debug_message("SPAWN3_HALL");
					spawns1 = false;
					spawns2 = false;
					spawns3 = true;	
					spawns4 = false;
			
			
				}
				else if(pickSpawn == 4 && !spawns4 && obj_timer.playerHasMoved){
					instance_create_layer(524, 645, "Enemy", obj_e1);
					show_debug_message("SPAWN4_HALL");
					spawns1 = false;
					spawns2 = false;
					spawns3 = false;	
					spawns4 = true;
				}
				else{
					spawns1 = false;
					spawns2 = false;
					spawns3 = false;	
					spawns4 = false;
					show_debug_message("NO SPAWN_HALL");
				}
				if(spawns1 || spawns2 || spawns3 || spawns4){
					obj_e1.image_yscale = 0.25;
					obj_e1.image_xscale = 0.25;
				}
				global.enemy_spawn_timer = global.enemy_spawn_interval;
			}
	}
	if(room == rm_storageRoom_final){
		global.enemy_spawn_timer -= 1;
		if(global.enemy_spawn_timer <= 0){
			pickSpawn = irandom_range(0,2)
			if(pickSpawn == 0 && !spawns1_STR){
					instance_create_layer(1029, 892, "Enemy", obj_e1);
					show_debug_message("SPAWN1_STR");
					spawns1_STR = true;
					spawns2_STR = false;
					
				}
				else if(pickSpawn == 1 && !spawns2_STR){
					instance_create_layer(585, 742, "Enemy", obj_e1);
					show_debug_message("SPAWN2_STR");
					spawns1_STR = false;
					spawns2_STR = true;

				}
				else{
					spawns1_STR = false;
					spawns2_STR = false;

					show_debug_message("NO SPAWN_STR");
				}
				if(spawns1_STR || spawns2_STR){
					obj_e1.image_yscale = 0.25;
					obj_e1.image_xscale = 0.25;
				}
				global.enemy_spawn_timer = global.enemy_spawn_interval;
			}
	}
	if(room == rm_bathroom_final){
		global.enemy_spawn_timer -= 1;
		if(global.enemy_spawn_timer <= 0){
			pickSpawn = irandom_range(0,2)
			if(pickSpawn == 0 && !spawns1_BATH){
					instance_create_layer(763, 640, "Enemy", obj_e1);
					show_debug_message("SPAWN1_BATH");
					spawns1_BATH = true;
					spawns2_BATH = false;
					
				}
				else if(pickSpawn == 1 && !spawns2_STR){
					instance_create_layer(1035, 716, "Enemy", obj_e1);
					show_debug_message("SPAWN2_BATH");
					spawns1_BATH = false;
					spawns2_BATH = true;

				}
				else{
					spawns1_BATH = false;
					spawns2_BATH = false;

					show_debug_message("NO SPAWN_BATH");
				}
				if(spawns1_BATH || spawns2_BATH){
					obj_e1.image_yscale = 0.25;
					obj_e1.image_xscale = 0.25;
				}
				global.enemy_spawn_timer = global.enemy_spawn_interval;
			}
	}
	
	if(room == rm_bedroom_final){
		global.enemy_spawn_timer -= 1;
		if(global.enemy_spawn_timer <= 0){
			pickSpawn = irandom_range(0,2)
			if(pickSpawn == 0 && !spawns1_BED){
					instance_create_layer(958, 579, "Enemy", obj_e1);
					show_debug_message("SPAWN1_BATH");
					spawns1_BED = true;
					spawns2_BED = false;
					
				}
				else if(pickSpawn == 1 && !spawns2_BED){
					instance_create_layer(1170, 716, "Enemy", obj_e1);
					show_debug_message("SPAWN2_BATH");
					spawns1_BED = false;
					spawns2_BED = true;

				}
				else{
					spawns1_BED = false;
					spawns2_BED = false;

					show_debug_message("NO SPAWN_BATH");
				}
				if(spawns1_BED || spawns2_BED){
					obj_e1.image_yscale = 0.25;
					obj_e1.image_xscale = 0.25;
				}
				global.enemy_spawn_timer = global.enemy_spawn_interval + obj_player.playerNights;
			}
	}
		
		
}






