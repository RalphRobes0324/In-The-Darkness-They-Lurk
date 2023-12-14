/// @description Insert description here
// You can write your code in this editor


hp -= 0.5;

//State of the hearts
if(hp >= 45 && hp <= 50){
	image_index = 0;
}
if(hp >= 40 && hp <= 45){
	image_index = 1;
}
if(hp >= 35 && hp <= 40){
	image_index = 2;
}
if(hp >= 30 && hp <= 35){
	image_index = 3;
}
if(hp >= 25  && hp <= 30){
	image_index = 4;
}
if(hp >= 20 &&hp <= 25){
	image_index = 5;
}
if(hp >= 15 && hp <= 20){
	image_index = 6;
}
if(hp >= 10 && hp <= 15){
	image_index = 7;
}
if(hp <= 10){
	image_index = 8;
}
if(hp <= 0){
	hp = 50;
}

