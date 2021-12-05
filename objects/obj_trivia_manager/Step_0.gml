if(answer_timer <= 0){
	show_debug_message("Time is up! The answer you chose was: " + chosen_answer);
	if (is_question){
		if(chosen_answer == question_answer_array[question_num]){
			display_text = right_response;
		} else {
			display_text = wrong_response;
		}
		is_question = !is_question;
		question_num++;
	} else {
		if(question_num >= array_length(question_array)){
			room_goto(rm_start);
		} else {
			display_text = question_array[question_num];
			is_question = !is_question;
		}
		
		
	}
	
	
	
	answer_timer = answer_timer_max;
	
} else {
	answer_timer--;
}




//if(!instance_exists(obj_textbox)){
//	//text_id = "trivia_question_" + string(question_num);
//	text_id = "trivia_question_" + string(question_num);
//	create_textbox(text_id);
//}