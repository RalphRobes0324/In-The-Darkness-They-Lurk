/// @description Action When Player Interacts
var _press_e = keyboard_check(ord("E"));// Gets e if 
if(place_meeting(x, y, obj_player) && _press_e && !instance_exists(obj_under_bed_tranistion)){
	var _inst  = instance_create_depth(0,0, -9999, obj_under_bed_tranistion);
	_inst.target_x = target_x;//Go to player's x in new room
	_inst.target_y = target_y;//Go to player's y in new room
	_inst.target_rm = target_rm;//Go to new room
}







