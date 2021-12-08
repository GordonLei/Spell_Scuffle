/// @description Insert description here
// You can write your code in this editor

if(!did_swing and state == "neutral" and !state_timer){
	if(keyboard_check_pressed(vk_space)){
		did_swing = true;
		state = "swinging";
		sprite =  spr_player_swinging;
		state_timer = state_timer_max;
	}
}
/*
else if (state == "tired" and instance_number(obj_baseball_ball)){
	state = "neutral"
	sprite = spr_player_neutral
	did_swing = false;
}
*/
else if (state_timer){
	state_timer--;
	if (state_timer <= 0 and state == "swinging"){
		state = "tired";
		sprite = spr_player_tired;
	}
}

sprite_index = sprite