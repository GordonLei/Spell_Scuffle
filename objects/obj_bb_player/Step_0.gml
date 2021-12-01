/// @description Insert description here
// You can write your code in this editor

if !global.GAME_BEGIN{
	if keyboard_check_pressed(vk_space){
		global.GAME_BEGIN = true
		instance_create_depth(x,y-32,0,obj_bb_ball)
	}
}


if keyboard_check(vk_right) || keyboard_check(ord("D")){
	xspd = mspd	
	my_scale_x = lerp(my_scale_x , 1.5, .2);
	my_scale_y = lerp(my_scale_y, .5, .2);
}
if keyboard_check(vk_left)|| keyboard_check(ord("A")){
	xspd = -mspd
	my_scale_x  = lerp(my_scale_x , 1.5, .2);
	my_scale_y = lerp(my_scale_y, .5, .2);
}

if (!(keyboard_check(vk_right) || keyboard_check(ord("D"))) and !(keyboard_check(vk_left)|| keyboard_check(ord("A")))){
	xspd = 0
	my_scale_x  = lerp(my_scale_x , 1, .4);
	my_scale_y = lerp(my_scale_y, 1, .4);
}

MoveCollide()

