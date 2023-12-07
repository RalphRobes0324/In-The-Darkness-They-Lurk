/// @description Drawing the Surface
// You can write your code in this editor

if(surface_exists(light_surface) == false){//check surface light has not been created
	
	light_surface = surface_create(room_width, room_height);//Creates surface based on room size
	show_debug_message("Surface Light has been created");
}

surface_set_target(light_surface);//Set target whole room

draw_clear_alpha(c_black, 1); //Transparent black

with(obj_player){//Getting Player's light Object

	gpu_set_blendmode(bm_subtract);//Decrease the colour

	//Draw Light around player default
	draw_sprite_ext(spr_player_light, 0,x, y, image_xscale, image_yscale, 0, c_white,5);
	
	if(flash_light_on){//checks Flash light, so first layer can go on
		if(face_dir == LEFT || face_dir == UP){
			draw_sprite_ext(spr_player_flashlight, 0,x, y - sprite_height/2, 0.25, image_yscale,  angle, c_white, 1);
		}
		else if(face_dir == DOWN){
			draw_sprite_ext(spr_player_flashlight, 0,x, y, 0.25, image_yscale,  angle, c_white, 1);
		}
		else{
			draw_sprite_ext(spr_player_flashlight, 0,x,  y - sprite_height/2, image_xscale, image_yscale,  angle, c_white, 1);
		}
	}

	
	gpu_set_blendmode(bm_add);//increase the colour
	
	
	//Draw Light around player and adding new values
	draw_sprite_ext(spr_player_light, 0, x, y, image_xscale, image_yscale, 0, c_white , 0.1);
	
	if(flash_light_on){//checks Flash light, so second layer can go on
		if(face_dir == LEFT || face_dir == UP){
			draw_sprite_ext(spr_player_flashlight, 0, x,  y - sprite_height/2, 0.25, image_yscale, angle, c_white ,0.1);
		}
		else if(face_dir == DOWN){
			draw_sprite_ext(spr_player_flashlight, 0, x, y, 0.25, image_yscale, angle, c_white ,0.1);
		}
		else{
			draw_sprite_ext(spr_player_flashlight, 0, x,  y - sprite_height/2, image_xscale, image_yscale, angle, c_white ,0.1);
		}
	}
	
	gpu_set_blendmode(bm_normal);//set default
	
	
	
}

surface_reset_target();

draw_surface(light_surface, 0, 0);//Draw Screen Transparent Black





