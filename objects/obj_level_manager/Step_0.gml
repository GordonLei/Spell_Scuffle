if(keyboard_check_pressed(ord("R"))){
	room_restart();
}

if(keyboard_check_pressed(ord("1"))){
	room_goto(rm_pong);
}
if(keyboard_check_pressed(ord("2"))){
	room_goto(rm_brick_break);
}
if(keyboard_check_pressed(ord("3"))){
	room_goto(rm_baseball);
	//room_goto(rm_trivia);
}
if(keyboard_check_pressed(ord("4"))){
	room_goto(rm_bullet);
	//room_goto(rm_trivia);
}


if(!instance_exists(obj_textbox) and room == rm_start){
		
	if(!created_text){
		text_id = "gamestate_text_" + string(GAMESTATE);
		create_textbox(text_id);
		created_text = true;
	} else {
		GAMESTATE++;
		created_text = false;
		switch GAMESTATE{
			case 1:
				room_goto(rm_pong);
				break;
			case 2:
				room_goto(rm_brick_break);
				break;
			case 3:
				room_goto(rm_trivia);
				break;
		} 
		
	}
		
}

show_debug_message("Current game state: " + string(GAMESTATE));
