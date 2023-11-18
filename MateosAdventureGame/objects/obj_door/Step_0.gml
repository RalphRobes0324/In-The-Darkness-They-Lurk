/// @description Action When Player Interacts

var _press_e = keyboard_check(ord("E"));// Gets e if clicked
if (place_meeting(x, y, obj_player) && _press_e){//Checks if player in area of effect and and press e
	room_goto(target_rm); //Goes to room
	obj_player.x = target_x; //goes to x-axis
	obj_player.y = target_y; //goes to y-axis
}




