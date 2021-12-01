/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("W"))){
	currentSpeed = -maxSpeed 
}
else if(keyboard_check(ord("S"))){
	currentSpeed = maxSpeed
}
else{
	currentSpeed = 0;
}

y = clamp(y + currentSpeed, 0, room_height - sprite_height)
//MoveCollide()
/*
if(keyboard_check(ord("D")) or keyboard_check(vk_right)){
		//	normalizes the movement toward the mouse 
		//	x += lengthdir_x(5, point_direction(x,y,mouse_x,mouse_y));
		x += 5;
		image_xscale = 1;
		draw_self();
}
if(keyboard_check(ord("A")) or keyboard_check(vk_left)){
	//	x -= lengthdir_x(5, point_direction(x,y,mouse_x,mouse_y));
	x -= 5;
	image_xscale = -1;
	draw_self();
}
if(keyboard_check(ord("W")) or keyboard_check(vk_up)){
	y -= 5;
	draw_self();
}
if(keyboard_check(ord("S")) or keyboard_check(vk_down)){
	y += 5;
	draw_self();
}
*/