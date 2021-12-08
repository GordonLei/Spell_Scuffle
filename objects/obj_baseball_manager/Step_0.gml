/// @description Insert description here
// You can write your code in this editor


if(balls <= 0){
	//you have completed the game
	room_goto(Room_backroom)
}
if(curr_strikes >= 3){
	//you lost 
	room_goto(Room_backroom)
}

if(instance_number(obj_baseball_ball) <= 0){
	if(state == "neutral"){
		instance_create_depth(x,y,1,obj_baseball_ball);
		state = "tired"
		
		obj_baseball_player.state = "neutral"
		obj_baseball_player.sprite = spr_player_neutral
		obj_baseball_player.did_swing = false;
		
	}
	else if(timer){
		timer--;
		if(timer <= 0){
			state = "neutral"
			timer = 0;
		}
	}
}
