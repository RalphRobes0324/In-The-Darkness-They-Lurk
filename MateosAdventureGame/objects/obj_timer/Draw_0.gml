/// @description Insert description here
// You can write your code in thi

draw_set_colour(c_white);//Set text white
if(t_min < 1){//timer less then 1 min, change colour
	draw_set_color(c_red);//Set text red
}
draw_set_font(fnt_GillSansMTCondensed);//Set text font


//Adjust to the offset
var offset_x = camera_get_view_width(view_camera[0]) / 2;
var offset_y = 50

//Getting values of camera
var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);

//Getting the X and Y coords
var text_x = camera_x + offset_x;
var text_y = camera_y + offset_y;

//Displaying the Time
var timer = "";
timer += string(t_min);
timer += ":";
if(t_sec > 9){
	timer += "" + string(t_sec);
}
if(t_sec < 10){
	timer += "0"+string(t_sec);
}
timer += "."
timer += string(t_mil);
draw_set_halign(fa_center); // Center the text horizontally
draw_set_valign(fa_top); // Align the text to the top
draw_text(text_x, text_y, timer);

