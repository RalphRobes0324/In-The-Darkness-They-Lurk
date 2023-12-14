/// @description Player dies
// You can write your code in this editor

if(hp <= 0){
	//Destroy all intance when player dies
	audio_stop_sound(snd_BG);
	instance_destroy(obj_health);
	instance_destroy(obj_door_transition);
	instance_destroy(obj_controller);
	instance_destroy(obj_timer);
	instance_destroy();
	instance_destroy(obj_flashlight);
	instance_destroy(obj_camera);
	instance_destroy(obj_battery);
	instance_destroy(obj_BG_MUSIC);
	room_goto(DeathMenu);
}




