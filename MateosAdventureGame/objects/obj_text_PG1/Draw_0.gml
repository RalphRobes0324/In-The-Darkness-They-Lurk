/// @description Draw text
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_GillSansMTCondensed);
var text_x =  camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2;
var text_y = camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) / 2;
draw_text_transformed(text_x + 400, text_y - 300, "How to Play", 2, 2, 0);
//Text for battery
draw_text_transformed(text_x - 285, text_y - 300, "Battery: This particular battery will", 0.5, 0.5, 0);
draw_text_transformed(text_x - 250, text_y - 250, "gradually run out when using a flashlight.", 0.5, 0.5, 0);
draw_text_transformed(text_x - 165, text_y - 200, "You have to turn off the flashlight to recharge the battery.", 0.5, 0.5, 0);
draw_text_transformed(text_x - 270, text_y - 150, "Make intelligent use of your flashlight!", 0.5, 0.5, 0);

//Text Hearts
draw_text_transformed(text_x - 295, text_y - 50, "Hearts: This is your health meter,", 0.5, 0.5, 0);
draw_text_transformed(text_x - 300, text_y - 15, "If you get hurt, this will drain!!!", 0.5, 0.5, 0);
draw_text_transformed(text_x - 275, text_y + 20, "Get your health back, you must hide.", 0.5, 0.5, 0);

//Text Enemy



