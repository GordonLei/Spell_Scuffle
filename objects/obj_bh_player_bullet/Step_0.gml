/// @description Insert description here
// You can write your code in this editor

//MoveCollideBullet()

if(place_meeting(x,y,obj_bh_boss)){
	collision_id = instance_place(x,y,obj_bh_boss)
	collision_id.state = "damaged"
	collision_id.sprite = spr_bh_boss_damaged
	collision_id.curr_health--;
	collision_id.timer = collision_id.timer_max
	instance_destroy();
}

sprite_index = sprite
y+=yspd