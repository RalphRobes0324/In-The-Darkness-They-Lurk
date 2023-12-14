/// @description Draw text
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_GillSansMTCondensed);
var text_x =  camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2;
var text_y = camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) / 2;
draw_set_color(c_yellow);
draw_text_transformed(text_x + 400, text_y - 300, "How to Play", 2, 2, 0);
draw_set_color(c_white);
//Text for battery
draw_text_transformed(text_x - 285, text_y - 300, "Battery: This particular battery will", 0.5, 0.5, 0);
draw_text_transformed(text_x - 250, text_y - 250, "gradually run out when using a flashlight.", 0.5, 0.5, 0);
draw_text_transformed(text_x - 165, text_y - 200, "You have to turn off the flashlight to recharge the battery.", 0.5, 0.5, 0);
draw_text_transformed(text_x - 270, text_y - 150, "Make intelligent use of your flashlight!", 0.5, 0.5, 0);

//Text Hearts
draw_text_transformed(text_x - 250, text_y - 45, "Hearts: This is an indicator of your health", 0.5, 0.5, 0);
draw_text_transformed(text_x - 296, text_y - 10, "that will deplete if you are hurt.", 0.5, 0.5, 0);

//Text Enemy
draw_text_transformed(text_x - 285, text_y + 145, "Lurkers: You will be hunted by this.", 0.5, 0.5, 0);
draw_text_transformed(text_x - 295, text_y + 190, "They'll murder you lightning fast!!", 0.5, 0.5, 0);



//Text Flashlight
draw_text_transformed(text_x + 450, text_y - 200, "Flashlight: This is your weapon.", 0.5, 0.5, 0);
draw_text_transformed(text_x + 445, text_y - 150, "Use it by clicking left with the", 0.5, 0.5, 0);
draw_text_transformed(text_x + 475, text_y - 100, "mouse to inflict harm on the enemy.", 0.5, 0.5, 0);
draw_set_color(c_yellow);
draw_text_transformed(text_x + 450, text_y - 50, "(ON/OFF: mouse click left.)", 0.5, 0.5, 0);
draw_set_color(c_white);
//Text Field of Vision
draw_text_transformed(text_x + 400, text_y + 50, "FoV: This is your vision", 0.5, 0.5, 0);
draw_text_transformed(text_x + 345, text_y + 100, "in the game", 0.5, 0.5, 0);

