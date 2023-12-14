/// @description 
// You can write your code in this editor

//Displaying How battery will look in-game
if(fullyCharge){
	flashlight_battery -= 0.5;
	if(flashlight_battery >= 85 && flashlight_battery <= 100.50){
			image_index = 0;
		}
	else if(flashlight_battery >= 70 && flashlight_battery <= 85){
		image_index = 1;
	}
	else if(flashlight_battery >= 50 && flashlight_battery <= 70){
		image_index = 2;
	}
	else if(flashlight_battery >= 30 && flashlight_battery <= 50){
		image_index = 3;
	}
	else if(flashlight_battery <= 20){
		image_index = 4;
	}
	else if(flashlight_battery >= 0){
			image_index = 5;
	}
}

if(flashlight_battery <= 0  || fullyCharge == false){
	fullyCharge = false;
	image_index = 7;
	flashlight_battery += 1;
	if(flashlight_battery >= 100){
		fullyCharge = true;
	}
	
}



	





