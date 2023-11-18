/// @description Action When Player Interacts

var _press_e = keyboard_check(ord("E"));
if (place_meeting(x, y, obj_player) && _press_e){
	room_goto(target_rm);
	obj_player.x = target_x;
	obj_player.y = target_y;
}




