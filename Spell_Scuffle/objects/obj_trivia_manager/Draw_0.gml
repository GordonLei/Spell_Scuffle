draw_text(300, 300, display_text);

draw_text(400, 400, round(answer_timer/60));

if (is_question and question_num < array_length(question_array)){
	draw_text(500, 500, choice_array_A[question_num]);
	draw_text(500 + offset_x, 500, choice_array_B[question_num]);
	draw_text(500, 500 + offset_y, choice_array_C[question_num]);
	draw_text(500 + offset_x, 500 + offset_y, choice_array_D[question_num]);
}