/// @description Player's variables define/set

hp = 50;

xspd = 0; //Player's x-speed
yspd = 0; //Player's y-speed
move_spd = 4;//Overrall move speed


//Array that stores direction of player
sprite[RIGHT] = Player_sideaysWalkFlashlight;
sprite[UP] = Player_backwardWalkFlashllight;
sprite[LEFT] = spr_player_left;
sprite[DOWN] = Player_forwardWalkFlashlight;
face_dir = DOWN; //Default Facing

flash_light_on = false;//Status flashlight
flashlight_battery = 100;//Setting value of battery of flashlight

centerYOFFset = -6;//The Y offset
centerY = y + centerYOFFset
angle = 0;//Flashlight angle


in_bed = false; //Player's status if hidding in bed
in_closet = false; //Player's status if hidding in closet



