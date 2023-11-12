/// @description Player's movement
// You can write your code in this editor

//Player's inputs
key_L = keyboard_check(ord("A")) || keyboard_check(vk_left); //checks user's player hit key "A" or arrow key left
key_R = keyboard_check(ord("D")) || keyboard_check(vk_right); //checks user's player hit key "A" or arrow key right
key_Sb = keyboard_check(vk_space);//checks user's player hit key spacebar

//Player's movement
var move = key_R - key_L; //Gets direction where player is heading, left or right
hSpeed = move * walkSpeed; //Combines player's dir and walk speed
x = x + hSpeed;//Move player on x-axis










