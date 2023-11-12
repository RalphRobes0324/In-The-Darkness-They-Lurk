/// @description Player's Action
// You can write your code in this editor

//Player's inputs
key_L = keyboard_check(ord("A")) || keyboard_check(vk_left); //checks user's player hit key "A" or arrow key left
key_R = keyboard_check(ord("D")) || keyboard_check(vk_right); //checks user's player hit key "A" or arrow key right
key_Sb = keyboard_check(vk_space);//checks user's player hit key spacebar

//Player's movement
var _move = key_R - key_L; //Gets direction where player is heading, left or right
h_speed = _move * walk_speed; //Combines player's dir and walk speed
v_speed += grv; //Player's gravity


//Check's Player Jumps
if(place_meeting(x,y+1,obj_wall) && key_Sb ){
	v_speed = -10;//Player's jump speed
}

//Horizontal Collision
if(place_meeting(x+h_speed, y, obj_wall)){//Player hits wall horizontal
	while(!place_meeting(x+sign(h_speed),y,obj_wall)){//Allow Player to be close to wall as possible
		x += sign(h_speed);//Increasing the x by 1
	}
	h_speed = 0; //stop player moving beyound collision
}
x += h_speed;//Move player on x-axis


//Vertical Collision
if(place_meeting(x, y+v_speed, obj_wall)){//Player hits wall vertical
	while(!place_meeting(x,y+sign(v_speed),obj_wall)){//Allow Player to be close to wall as possible
		y += sign(v_speed);//Increasing the y by 1
	}
	v_speed = 0; //stop player moving beyound collision
}

y += v_speed;//Move player on y-axis










