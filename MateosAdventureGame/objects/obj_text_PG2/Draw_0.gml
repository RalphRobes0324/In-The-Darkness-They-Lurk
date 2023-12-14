/// @description Draw text
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_GillSansMTCondensed);
var text_x =  camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/ 2;
var text_y = camera_get_view_y(view_camera[0]) +  camera_get_view_height(view_camera[0]) / 2;
draw_set_color(c_white);

//Text WASD
draw_text_transformed(text_x - 100, text_y - 300, "WASD: These are the keys to ", 0.5, 0.5, 0);
draw_text_transformed(text_x - 185, text_y - 250, "move around", 0.5, 0.5, 0);
//Text Hiding Spots
draw_text_transformed(text_x - 50, text_y + 50, "Hiding Spots: These are", 0.5, 0.5, 0);
draw_text_transformed(text_x - 35, text_y + 100, "hiding spots in the map.", 0.5, 0.5, 0);
draw_set_color(c_yellow);
draw_text_transformed(text_x - 20, text_y + 150, "(Press E to hide or to leave)", 0.5, 0.5, 0);
draw_set_color(c_white);

//Door
draw_text_transformed(text_x + 450, text_y - 300, "Door: These will take you", 0.5, 0.5, 0);
draw_text_transformed(text_x + 440, text_y - 250, "other rooms in the map.", 0.5, 0.5, 0);
draw_set_color(c_yellow);
draw_text_transformed(text_x + 400, text_y - 200, "(Press E on it)", 0.5, 0.5, 0);
