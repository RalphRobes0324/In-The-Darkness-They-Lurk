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
	with(obj_e1){
		instance_destroy();
	}
}

if(startRound){
	global.enemy_spawn_timer -= 1;
	if(global.enemy_spawn_timer <= 0){
		instance_create_layer(1182, 1534, "Enemy", obj_e1);
		obj_e1.image_yscale = 0.25;
		obj_e1.image_xscale = 0.25;
		global.enemy_spawn_timer = global.enemy_spawn_interval;
	}
}





