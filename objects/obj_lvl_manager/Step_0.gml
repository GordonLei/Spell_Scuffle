/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("1"))){
	room_goto(rm_pong)
}
if(keyboard_check_pressed(ord("2"))){
	room_goto(rm_brick_break)
}
if(keyboard_check_pressed(ord("R"))){
	room_restart()
}
