/// @description Player dies
// You can write your code in this editor

if(hp <= 0){
	with(instance_create_layer(x,y,layer,obj_deadPlayer)){
		
	}
	
	//Destroy all intance when player dies
	instance_destroy();
	instance_destroy(obj_flashlight);
	instance_destroy(obj_camera);
	instance_destroy(obj_e1);
	instance_destroy(obj_battery);
	room_goto(MainMenu);
}




