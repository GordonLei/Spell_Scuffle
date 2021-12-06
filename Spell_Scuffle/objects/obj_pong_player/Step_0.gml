/// @description Insert description here
// You can write your code in this editor

//THIS IS THE OLD CODE WITHOUT MOVECOLLIDE
/*
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
*/


if keyboard_check(vk_down) || keyboard_check(ord("S")){
	yspd = mspd	
}
if keyboard_check(vk_up) || keyboard_check(ord("W")){
	//Up is negative -mspd as GMS2 level upper left corner is 0,0
	//	As you go down rows, y increases / is more positive
	yspd = -mspd
}
if (! (keyboard_check(vk_up) || keyboard_check(ord("W"))) and !(keyboard_check(vk_down) || keyboard_check(ord("S")))){
	yspd = 0
}
y = clamp(y + yspd, 0, room_height - sprite_height)
MoveCollide()
