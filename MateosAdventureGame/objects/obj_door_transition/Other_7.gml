/// @description After Tranistion

room_goto(target_rm); //Goes to room
obj_player.x = target_x; //goes to x-axis
obj_player.y = target_y; //goes to y-axis
image_speed = -1; //speed of the animation
obj_player.face_dir = target_face_dir; //Gets direction player's Facing