/// @description Insert description here
// You can write your code in this editor

//This does nothing for now. IDK if we need this
switch(style){
	case "straight":
		break;
	case "curve":
		break;
}
//If the player does not successfully hit...
if(approach_timer <= 0){
	obj_baseball_manager.balls--;
	//decrement ball count and give a time for a breather
	obj_baseball_manager.state = "reload"
	obj_baseball_manager.timer = obj_baseball_manager.timer_max
	//set sprite to them on fire or something
	obj_baseball_player.sprite = spr_player_fire
	//increment strike count
	obj_baseball_manager.curr_strikes++;
	instance_destroy();
}
//if the player successfully hit the ball
else if(approach_timer < hit_timer){
	if(obj_baseball_player.state == "swinging"){
		obj_baseball_manager.balls--;
		obj_baseball_manager.state = "reload"
		obj_baseball_manager.timer = obj_baseball_manager.timer_max
		instance_destroy();
		//this means the player can hit the ball and they chose to do so
	}
	sprite = spr_baseball_hittable
}

approach_timer--;
sprite_index = sprite;