/// @description Player's Actions

//Player's Input from keyboard
var _right_k = keyboard_check(vk_right) || keyboard_check(ord("D")); //going right
var _left_k = keyboard_check(vk_right) || keyboard_check(ord("A")); // going left
var _up_k = keyboard_check(vk_right) || keyboard_check(ord("W")); // going up
var _down_k = keyboard_check(vk_right) || keyboard_check(ord("S")); // going down

//Change of direction on x and y-axis, and adding that with player move speed
xspd = (_right_k - _left_k) * move_spd;
yspd = (_down_k - _up_k) * move_spd;


//Collision Checks
if(place_meeting(x + xspd, y, obj_wall)){//Checks player hit wall on x-axis
	xspd = 0; //set x speed to 0
}
if(place_meeting(x,y + yspd, obj_wall)){//Checks player hit wall on y-axis
	yspd = 0; //set y speed to 0
}

//Move player in game
x += xspd;
y += yspd;


//Set Sprite on x-axis
if(xspd > 0) {face_dir = RIGHT}
if(xspd < 0) {face_dir = LEFT}
//Set Sprite on y-axis
if(yspd > 0) {face_dir = DOWN}
if(yspd < 0) {face_dir = UP}

sprite_index = sprite[face_dir]; //Set player's sprite is facing