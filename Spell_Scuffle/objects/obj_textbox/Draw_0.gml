accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0]) + 300;
textbox_y = camera_get_view_y(view_camera[0]) + 450;

//setup
if(!setup){
	show_debug_message("setup being run");
	setup = true;
	draw_set_font(comic_font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	for(var i = 0; i < page_number; i++){
		//find how many characters are on each page
		text_length[i] = string_length(text[i]);
		
		//get the x position for the textbox
		text_x_offset[i] = 44;
		
		//setting individual characters and finding where the lines of text should break
		for (var c = 0; c < text_length[i]; c++){
			var _char_pos = c + 1;
			
			//store individual characters in the char array
			char[c, i] = string_char_at(text[i], _char_pos);
			
			//get current width of line
			var _txt_up_to_char = string_copy(text[i], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, i]);
			
			//get the last free space
			if (char[c, i] == " "){
				last_free_space = _char_pos+1;
			}
			
			//get the line breaks 
			if (_current_txt_w - line_break_offset[i] > line_width){
				line_break_pos[line_break_num[i], i] = last_free_space;
				line_break_num[i]++;
				var _txt_up_to_last_space = string_copy(text[i], 1, last_free_space);
				var _last_free_space_string = string_char_at(text[i], last_free_space);
				line_break_offset[i] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
			}
		}
		
		//getting each characters coordinates
		for (var c = 0; c < text_length[i]; c++){
			var _char_pos = c+1;
			var _txt_x = textbox_x + text_x_offset[i] + border;
			var _txt_y = textbox_y + border;
			//get current width of line
			var _txt_up_to_char = string_copy(text[i], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, i]);
			var _txt_line = 0;
			
			//compensate for string breaks
			for (var lb = 0; lb < line_break_num[i]; lb++){
				//if the current looping char is after a line break
				if (_char_pos >= line_break_pos[lb, i]){
					var _str_copy = string_copy(text[i], line_break_pos[lb,i], _char_pos-line_break_pos[lb,i]);
					_current_txt_w = string_width(_str_copy);
					
					//record the line this character should be on
					_txt_line = lb+1;
				}
			}
			
			//add to the x and y coordinates based on new info
			char_x[c, i] = _txt_x + _current_txt_w;
			char_y[c, i] = _txt_y + _txt_line*line_sep;
		}
		
	}
}

//draw text
if (draw_char < text_length[page]){
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//flip through pages
if !OCCUPIED and accept_key{
	//if the typing is done
	if (draw_char == text_length[page]){
		//next page
		if (page < page_number-1){
			page++;
			draw_char = 0;
		}
		//textbox done
		else {
			//link text for options
			if option_number > 0 {
				create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();
		}
	}
	//if not done typing
	else {
		draw_char = text_length[page];
	}

}


//draw textbox
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_img = txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);

//background of textbox
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w,
textbox_height/txtb_spr_h, 0, c_white, 1);

//Options
if (draw_char == text_length[page] && page == page_number - 1){
	//option selection
	option_pos += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
	option_pos = clamp(option_pos, 0, option_number - 1);
	
	
	
	//draw the options
	var _op_space = 30;
	var _op_bord = 4;
	for (var op = 0; op < option_number; op++){
		//the option box
		var _o_w = string_width(option[op]) + _op_bord * 2;
		//draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space * option_number + _op_space*op,
		//_o_w/txtb_spr_w,( _op_space-1)/txtb_spr_h, 0, c_white, 1);
		
		if option_pos == op{
			draw_sprite_ext(txtb_spr_selected, txtb_img, _txtb_x + 16, _txtb_y - _op_space * option_number + _op_space*op,
		_o_w/txtb_spr_w,( _op_space-1)/txtb_spr_h, 0, c_white, 1);
		} else {
			draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space * option_number + _op_space*op,
		_o_w/txtb_spr_w,( _op_space-1)/txtb_spr_h, 0, c_white, 1);
		}
		
		//the option text
		draw_text(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op +2, option[op]);
	}
}

//draw the text
for (var c = 0; c < draw_char; c++){
	//the text
	draw_text(char_x[c, page], char_y[c, page], char[c, page]);
}

