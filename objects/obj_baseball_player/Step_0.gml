/// @description Insert description here
// You can write your code in this editor

//if you did not swing and are in a neutral state, SWING
if(!did_swing and state == "neutral" and !state_timer){
	if(keyboard_check_pressed(vk_space)){
		did_swing = true;
		state = "swinging";
		sprite =  spr_player_swinging;
		state_timer = state_timer_max;
	}
}

//if you are in a state 
else if (state_timer){
	state_timer--;
	//if you have completed your swing, you are now tired
	if (state_timer <= 0 and state == "swinging"){
		state = "tired";
		sprite = spr_player_tired;
	}
}

sprite_index = sprite