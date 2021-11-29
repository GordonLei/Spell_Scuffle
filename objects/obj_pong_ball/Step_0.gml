/// @description Insert description here
// You can write your code in this editor

if(y < 0 || y + sprite_height > room_height){
	yspd = -yspd
}

//this part should not matter since game ends here
if(x < 0 || x > room_width){
	x = room_width / 2;
	y = room_height / 2;
	xspd = random_range(-10,10);
	yspd = random_range(-10,10);
}

if(position_meeting(x,y, obj_pong_player) || position_meeting(x,y, obj_pong_enemy)){
	xspd = -xspd
}

x += xspd
y += yspd 

