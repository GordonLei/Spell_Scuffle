/// @description Insert description here
// You can write your code in this editor


if(start_moving){
	if (obj_pong_ball.y < y){ 
		yspd = -mspd
	}
	else {
		yspd = mspd
	}
	//Old code before MoveCollide
	/*
	if (obj_pong_ball.y < y){ 
	currentSpeed = -maxSpeed
	}
	else {
		currentSpeed = maxSpeed
	}
	*/
	
	
}
else{
	yspd = 0
	//pre-movecollide
	/*
	currentSpeed = 0
	*/
}

//y = clamp(y + currentSpeed, 0, room_height - sprite_height)
y = clamp(y + yspd, 0 + mspd, room_height - sprite_height - mspd)
MoveCollide()