/// @description Player's movement
// You can write your code in this editor

//Player's inputs
key_L = keyboard_check(ord("A")) || keyboard_check(vk_left); //checks user's player hit key "A" or arrow key left
key_R = keyboard_check(ord("D")) || keyboard_check(vk_right); //checks user's player hit key "A" or arrow key right
key_Sb = keyboard_check(vk_space);//checks user's player hit key spacebar

//Player's movement
var _move = key_R - key_L; //Gets direction where player is heading, left or right
h_speed = _move * walk_speed; //Combines player's dir and walk speed


//Horizontal Collision
if(place_meeting(x+h_speed, y, obj_wall)){//Player hits side of the wall
	while(!place_meeting(x+sign(h_speed),y,obj_wall)){
		x = x + sign(h_speed);
	}
	h_speed = 0;
}
x = x + h_speed;//Move player on x-axis










