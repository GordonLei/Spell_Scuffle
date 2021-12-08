/// @description Insert description here
// You can write your code in this editor

switch(style){
	case "straight":
		break;
	case "curve":
		break;
}

if(approach_timer <= 0){
	obj_baseball_manager.balls--;
	obj_baseball_manager.state = "reload"
	obj_baseball_manager.timer = obj_baseball_manager.timer_max
	obj_baseball_player.sprite = spr_player_fire
	obj_baseball_manager.curr_strikes++;
	instance_destroy();
}
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