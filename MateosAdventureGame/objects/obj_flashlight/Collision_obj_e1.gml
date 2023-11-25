/// @description Flashlight create collision with enemy
// You can write your code in this editor

if(obj_player.flash_light_on){
	obj_e1.hp -= 1;
	var knockbackSpeed = 6;
	var knockbackDirection = point_direction(obj_player.x,obj_player.y,obj_e1.x, obj_e1.y);
	
	var knockBackX = lengthdir_x(knockbackSpeed, knockbackDirection);
	var knockBackY = lengthdir_y(knockbackSpeed, knockbackDirection);
	
	obj_e1.x += knockBackX;
	obj_e1.y += knockBackY;
	if(obj_e1.hp <= 0){
		instance_destroy();
		show_debug_message("dead");
	}
	var e1hp = "HP: " + string(obj_e1.hp);
	show_debug_message(e1hp);
}
else{
	
}

