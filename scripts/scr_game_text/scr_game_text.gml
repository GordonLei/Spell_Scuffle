/// @param text_id
function scr_game_text(_text_id){
	switch(_text_id){
		case "gamestate_text_0":
			scr_text("This is the playtest build for Spell Scuffle. Press space to go through textbox");
			scr_text("Use 'wasd' to move around. Use 1,2,3 key to go to different games instantly");
			scr_text("First game up is pong. Get ready!");
			break;
		case "gamestate_text_1":
			scr_text("That was the first game, pong");
			scr_text("We are working on transitions between games");
			scr_text("Next up is brick break.");
			break;
		case "gamestate_text_2":
			scr_text("That was our second game, brick break");
			scr_text("It might be replaced with space invader");
			scr_text("Next one is trivia");
			break;
		case "gamestate_text_3":
			scr_text("That was our third game, trivia");
			scr_text("we might add an additional mechanic to make it more exciting");
			break;
		case "gamestate_text_4":
			scr_text("That's it for now, there will be more games added");
			scr_text("And the existing ones will be polished.");
			scr_text("Thanks for playing");
			break;
		case "trivia_intro":
			scr_text("Are you excited for trivia?");
				scr_option("Yes", "trivia_intro_yes");
				scr_option("No", "trivia_intro_no");
			break;
		case "trivia_intro_yes":
			scr_text("Lol nerd.");
			break;
		case "trivia_intro_no":
			scr_text("Well, too bad.");
			break;
		case "trivia_question_1":
			scr_text("Who wrote the 1979 concept album detaling the story of Pink, a rock star?");
			break;
		case "trivia_question_2":
			scr_text("How many classical states of matter are there");
			break;
		case "":
			scr_text("Error no text_id");
			break;
	}
}