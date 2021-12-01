/// @description Insert description here
// You can write your code in this editor


x += xspd
y += yspd 

//if you hit the ceiling or floor, flip Y speed.
if(y < 0 || y + sprite_height > room_height){
	yspd = -yspd
}

//if you hit the left or right walls, reset the game for now
//this part should not matter since game ends here
if(x < 0 || x > room_width){
	x = room_width / 2;
	y = room_height / 2;
	xspd = speed_options[irandom(array_length(speed_options) - 1)]
	yspd = speed_options[irandom(array_length(speed_options) - 1)]
}

//if the ball is going toward the enemy, 
//	the enemy only reacts when it passes half the room
if(x >= room_width * 2/3 and xspd > 0 and obj_pong_enemy.start_moving == false){
	obj_pong_enemy.start_moving = true;
}
//if the ball is going toward the player, 
//	the enemy should not move
if(xspd < 0){
	obj_pong_enemy.start_moving = false;
}

//if the ball collides with the player or the enemy, change xpd
if(position_meeting(x,y, obj_pong_player) || position_meeting(x,y, obj_pong_enemy)){
	xspd = -xspd
	obj_pong_enemy.start_moving = false;
}

//MoveCollide()

