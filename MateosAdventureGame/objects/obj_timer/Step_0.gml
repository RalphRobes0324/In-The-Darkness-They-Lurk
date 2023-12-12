/// @description Checks Player has moved
// You can write your code in this editor

// Key Press Event of the player object
if(!playerHasMoved && obj_controller.startRound){
	if (keyboard_check_pressed(ord("W"))||
	keyboard_check_pressed(ord("S"))||
	keyboard_check_pressed(ord("D")) ||
	keyboard_check_pressed(ord("A"))) {
		playerHasMoved = true
		show_debug_message("START");
	}
}