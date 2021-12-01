/// @description Insert description here
// You can write your code in this editor

if(start_moving){
	if (obj_pong_ball.y < y){ 
	currentSpeed = -maxSpeed
	}
	else {
		currentSpeed = maxSpeed
	}
}
else{
	currentSpeed = 0
}

y = clamp(y + currentSpeed, 0, room_height - sprite_height)
//MoveCollide()