/// @description Player dies
// You can write your code in this editor

if(hp <= 0){
	//Destroy all intance when player dies
	instance_destroy();
	instance_destroy(obj_flashlight);
	instance_destroy(obj_camera);
	instance_destroy(obj_battery);
	instance_destroy(obj_e1);
	room_goto(DeathMenu);
}




