if (place_meeting(x, y, obj_player)){
	sprite_index = spr_trivia_button_pressed;
	obj_trivia_manager.chosen_answer = answer
} else {
	sprite_index = sprite;
}