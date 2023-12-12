/// @description Controller Variables

startRound = true
timer = room_speed * 3;
saveTimer  = timer;
spawnTimer  = 30;


// Create Event of the controller object
global.enemy_spawn_interval = room_speed * 3 + obj_player.playerNights; // Adjust as needed
global.enemy_spawn_timer = 0;


//Checks Spawns Hallway
spawns1 = false;
spawns2 = false;
spawns3 = false;
spawns4 = false;

//Checks Spawns bathroom
spawns1_BATH = false;
spawns2_BATH = false;


//checks Spawns Storage;
spawns1_STR = false;
spawns2_STR = false;

//Checks Bedroom Hallway
spawns1_BED = false;
spawns2_BED = false;



