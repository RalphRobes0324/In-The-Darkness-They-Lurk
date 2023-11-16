/// @description Player's Actions

//Player's Input from keyboard
var _right_k = keyboard_check(vk_right) || keyboard_check(ord("D")); //going right
var _left_k = keyboard_check(vk_right) || keyboard_check(ord("A")); // going left
var _up_k = keyboard_check(vk_right) || keyboard_check(ord("W")); // going up
var _down_k = keyboard_check(vk_right) || keyboard_check(ord("S")); // going down

//Player's Direction on x-axis/y-axis and adding move speed to player
xspd = (_right_k - _left_k) * move_spd;
yxsp = (_down_k - _up_k) * move_spd;

//Move player in-game
x += xspd;
y += yxsp;












