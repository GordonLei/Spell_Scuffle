depth = -9999;

textbox_width = 700;
textbox_height = 200;
border = 24;
line_sep = 36;
line_width = textbox_width - border*2;
txtb_spr = spr_dialog_box;
txtb_spr_selected = spr_dialog_box_selected;
txtb_img = 0;
txtb_img_spd = 6/60;

//text settings
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);

char[0,0] = "";
char_x[0,0] = 0;
char_y[0,0] = 0;

draw_char = 0;
text_spd = 1;

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;


setup = false;

//Effects
scr_set_defaults_for_text();
last_free_space = 0;