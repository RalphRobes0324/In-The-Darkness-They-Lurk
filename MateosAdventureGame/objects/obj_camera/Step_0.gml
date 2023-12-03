/// @description Camera's Action


//Getting player Coords
var player_x = obj_player.x;
var player_y = obj_player.y;

//Adjusting lerp
var lerp_adjust = 0.1;
var view_w = camera_get_view_width(view_camera[0]);
var view_h =  camera_get_view_height(view_camera[0]);

//Camera coords
var camera_X = lerp(camera_get_view_x(view_camera[0]), player_x - view_w  / 2, lerp_adjust);
var camera_Y = lerp(camera_get_view_y(view_camera[0]), player_y - view_h / 2, lerp_adjust);

//Set Camera on Player position
camera_set_view_pos(view_camera[0], camera_X, camera_Y);





