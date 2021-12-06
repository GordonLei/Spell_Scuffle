if (place_meeting(x, y, obj_player)){
	if(!pressed){
		pressed = true;
		audio_play_sound(snd_button_press, 1, false)
	}
	sprite_index = spr_trivia_button_pressed;
	obj_trivia_manager.chosen_answer = answer
} else {
	sprite_index = sprite;
	pressed = false;
}