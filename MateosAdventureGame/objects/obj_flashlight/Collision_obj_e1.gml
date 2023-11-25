/// @description Flashlight create collision with enemy
// You can write your code in this editor

if(obj_player.flash_light_on && place_meeting(x,y,obj_e1)){//Checks flashlight is on
	obj_e1.hp -= 0.5;//minus 1 health
	var knockbackSpeed = 3; //speed of the knocback
	var knockbackDirection = point_direction(obj_player.x,obj_player.y,obj_e1.x, obj_e1.y);//Direction of knock will be
	
	var knockBackX = lengthdir_x(knockbackSpeed, knockbackDirection);//distance on x
	var knockBackY = lengthdir_y(knockbackSpeed, knockbackDirection);//distance on y
	
	obj_e1.x += knockBackX;//add to enemy x coords
	obj_e1.y += knockBackY;//add to enemy y coords
	//var dmg = "HP: " + string(obj_e1.hp);
	//show_debug_message(dmg);
}


