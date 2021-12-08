/// @description Insert description here
// You can write your code in this editor


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

if keyboard_check(vk_down) || keyboard_check(ord("S")){
	yspd = mspd	
}
if keyboard_check(vk_up) || keyboard_check(ord("W")){
	//Up is negative -mspd as GMS2 level upper left corner is 0,0
	//	As you go down rows, y increases / is more positive
	yspd = -mspd
}
if (! (keyboard_check(vk_up) || keyboard_check(ord("W"))) and !(keyboard_check(vk_down) || keyboard_check(ord("S")))){
	yspd = 0
}





if (!(keyboard_check(vk_right) || keyboard_check(ord("D"))) and !(keyboard_check(vk_left)|| keyboard_check(ord("A")))){
	xspd = 0
	my_scale_x  = lerp(my_scale_x , 1, .4);
	my_scale_y = lerp(my_scale_y, 1, .4);
}

//cannot move outside of boundary
y = clamp(y + yspd, 0 + mspd, room_height - sprite_height - mspd)
x = clamp(x + xspd, 0 + mspd, room_width - sprite_width - mspd)
//move collision stuff
MoveCollide()

if(state = "neutral" and keyboard_check_pressed(vk_space)){
	state = "shooting"
	sprite = spr_bh_player_shooting
	timer = timer_max
	instance_create_depth(x, y, 1, obj_bh_player_bullet);
	
}

if(timer){
	timer--;
	if(timer <= 0 and state = "shooting"){
		timer = timer_max;
		state = "tired"
		sprite = spr_bh_player_tired
	}
	else if(timer <= 0){
		timer = 0;
		state = "neutral";
		sprite = spr_bh_player_neutral
	}
}

sprite_index = sprite