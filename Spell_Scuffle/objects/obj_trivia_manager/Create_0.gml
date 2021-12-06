//timer for quiz show
answer_timer_max = room_speed * 5;
answer_timer = answer_timer_max;

chosen_answer = "";

//whether the text displayed currently is a trivia question or not
is_question = true;

question_array[0] = "What's the deal with airline food";
question_array[1] = "What's the deal with non airline food";

//answer choices display

offset_x = 25;
offset_y = 25;

choice_array_A[0] = "d";
choice_array_A[1] = "d";

choice_array_B[0] = "c";
choice_array_B[1] = "c";

choice_array_C[0] = "s";
choice_array_C[1] = "d";

choice_array_D[0] = "x";
choice_array_D[1] = "c";

display_text = question_array[0];

question_answer_array[0] = "B";
question_answer_array[1] = "C";

wrong_response = "Boo! Wrong!"
right_response = "Correcto!"

question_num = 0;



