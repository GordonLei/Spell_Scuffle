/// @description Insert description here
// You can write your code in this editor

//this is to account for collision masks when changing scale 
draw_sprite_ext(spr_tmp_player_paddle_1,0,x,y,my_scale_x, my_scale_y,image_angle,image_blend, image_alpha);
/*
	Could also do this:
	draw_sprite_ext(sprite_index,image_index,x,y,my_scale_x, my_scale_y,image_angle,image_blend, image_alpha);
*/