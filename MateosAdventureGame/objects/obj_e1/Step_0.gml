/// @description Enemy Action
direction = point_direction(x,y, obj_player.x, obj_player.y);// points where Player is
speed = random_range(0.5, 1.5);//Enemy speed

if(direction > 90 && direction < 270){
	image_xscale = -1;
} 
else{
	image_xscale = 1;
}






