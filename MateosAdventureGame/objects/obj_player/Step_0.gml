/// @description Player's Actions
var _save_x  = obj_player.x;
var _save_y = obj_player.y;


//Player's Input from keyboard
if(!in_bed && !in_closet){
	var _right_k = keyboard_check(vk_right) || keyboard_check(ord("D")); //going right
	var _left_k = keyboard_check(vk_left) || keyboard_check(ord("A")); // going left
	var _up_k = keyboard_check(vk_up) || keyboard_check(ord("W")); // going up
	var _down_k = keyboard_check(vk_down) || keyboard_check(ord("S")); // going down
	var _mouse_check_left = mouse_check_button_pressed(mb_left);//Get mouse button left


	//Change of direction on x and y-axis, and adding that with player move speed
	xspd = (_right_k - _left_k) * move_spd;
	yspd = (_down_k - _up_k) * move_spd;

	//Checks transition exist
	if(instance_exists(obj_pause_player)){
		xspd = 0;
		yspd = 0;
	}


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



	//HELP TO MAKE DIAGONAL EFFECT
	if(yspd == 0){//Checks player is not going up or down
		//Set Sprite on x-axis
		if(xspd > 0) {
			image_xscale = 0.25;
			face_dir = RIGHT}// Go right
		if(xspd < 0) {
			image_xscale = -0.25;
			face_dir = LEFT} //Go Left
	}

	//If sprites don't change based on direction (LEFT OR RIGHT), this will force change
	if ( xspd > 0 && face_dir == LEFT){ face_dir = RIGHT}
	if ( xspd < 0 && face_dir == RIGHT){ face_dir = LEFT}


	if(xspd == 0 ){//Check player is not going left or right
		//Set Sprite on y-axis
		if(yspd > 0) {face_dir = DOWN}// Go Down
		if(yspd < 0) {face_dir = UP}// Go Up
	}
	//If sprites don't change based on direction (UP OR DOWN), this will force change
	if ( yspd > 0 && face_dir == UP){ face_dir = DOWN}
	if ( yspd < 0 && face_dir == DOWN){ face_dir = UP}


	sprite_index = sprite[face_dir]; //Set player's sprite is facing
	
	//Checks Player state when not moving
	if(xspd == 0 && yspd == 0){
		if(face_dir == DOWN){
			sprite_index = Player_forwardIdleFlashlight;
		}
		else if(face_dir == UP){
			sprite_index = Player_backwardIdleFlashlight;
		}
		else if(face_dir == RIGHT){
			sprite_index = Player_sideaysIdleFlashlight;
			image_xscale = 0.25;
		}
		else if(face_dir == LEFT){
			sprite_index = Player_sideaysIdleFlashlight;
			image_xscale = - 0.25;
		}
	}
	
	//Flashlight
	centerY = y + centerYOFFset
	angle  = point_direction(x, centerY, mouse_x, mouse_y);//gets Angle of player and mouse

	if(_mouse_check_left && (flashlight_battery >= 15 && flashlight_battery <= 100.50)){//Check user pressed left mouse once
		flash_light_on = !flash_light_on; //Not Gate
	}
	if(flashlight_battery <= 0){ //checks battery is still above 0
		flash_light_on = false; //sets flashlight to false admittely
	}
	if(flash_light_on){//flash is in use
		flashlight_battery -= 0.5; //draining the battery
	}
	if(!flash_light_on){//when flashlight is off
		if(flashlight_battery < 100){//checks battery fully charge
			flashlight_battery += 1;//charging the battery
		}
		
		
	}
	//var msg = string(flash_light_on) + ":" + string(flashlight_battery);
	//show_debug_message(msg);
}
else if(in_bed){//Checks Player is underbed
	var _right_k = keyboard_check(vk_right) || keyboard_check(ord("D")); //going right
	var _left_k = keyboard_check(vk_left) || keyboard_check(ord("A")); // going left
	xspd = (_right_k - _left_k) * move_spd;
	//Collision Checks
	if(place_meeting(x + xspd, y, obj_wall)){//Checks player hit wall on x-axis
		xspd = 0; //set x speed to 0
	}
	x += xspd * 2;
}
else if(in_closet){//Checks Player is in closet
	var _right_k = keyboard_check(vk_right) || keyboard_check(ord("D")); //going right
	var _left_k = keyboard_check(vk_left) || keyboard_check(ord("A")); // going left
	var _up_k = keyboard_check(vk_up) || keyboard_check(ord("W")); // going up
	var _down_k = keyboard_check(vk_down) || keyboard_check(ord("S")); // going down
	
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
	
}

if(in_bed || in_closet){//Checks Player is in hidding places
	image_alpha = 0;//Set Player invisiable
}
else{
	image_alpha = 1;////Set Player visiable
}
