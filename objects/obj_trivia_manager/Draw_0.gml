draw_set_color(c_black);
draw_text(500, 100, display_text);



if (is_question and question_num < array_length(question_array)){
	draw_text(750, 125, "Time Left: " + string(round(answer_timer/60)));
	draw_text(550, 150, choice_array_A[question_num]);
	draw_text(550 + offset_x, 150, choice_array_B[question_num]);
	draw_text(550, 150 + offset_y, choice_array_C[question_num]);
	draw_text(550 + offset_x, 150 + offset_y, choice_array_D[question_num]);
}

draw_set_color(c_white);