/// @description Drawing the Surface
// You can write your code in this editor

if(surface_exists(light_surface) == false){//check surface light has not been created
	
	light_surface = surface_create(room_width, room_height);//Creates surface based on room size
	show_debug_message("Surface Light has been created");
}

surface_set_target(light_surface);//Set target whole room

draw_clear_alpha(c_black, 0.6); //Transparent black

var _player_wooble_light = 0.02;
with(obj_player){//Getting Player's light Object
	
	//wooble light effect
	var _wobble_amount_x = image_xscale + random_range(-_player_wooble_light,_player_wooble_light);
	var _wobble_amount_y = image_yscale + random_range(-_player_wooble_light,_player_wooble_light);
	
	 
	gpu_set_blendmode(bm_subtract);//Decrease the colour
	
	//Draw Light around player default
	draw_sprite_ext(spr_player_light, 0,x, y, image_xscale, _wobble_amount_y, 0, c_white,1);
	
	gpu_set_blendmode(bm_add);//increase the colour
	
	//Draw Light around player and adding new values
	draw_sprite_ext(spr_player_light, 0, x, y, _wobble_amount_x, image_yscale, 0, c_white , 0.1);
	
	gpu_set_blendmode(bm_normal);//set default
	
}

surface_reset_target();

draw_surface(light_surface, 0, 0);//Draw Screen Transparent Black





