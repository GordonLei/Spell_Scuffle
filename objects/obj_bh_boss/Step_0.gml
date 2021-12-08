/// @description Insert description here
// You can write your code in this editor

/*
if(instance_place(x,y,obj_bh_player_bullet)){
	if(place_meeting(x+sign(xspd_floored),y,obj_collidable)){
		hitThing = instance_place(x+sign(xspd_floored),y,obj_collidable)
		hitThing.hit = true
		xspd *= -1
		x_remainder = 0
		hit = true;
				
		audio_play_sound(snd_bounce, 1, false)
			
				
		break;
	}
				
}
*/
			
MoveCollide()

if(timer){
	timer--;
	if(timer <= 0){
		timer = 0;
		state = "neutral"
		sprite = spr_bh_boss_neutral
	}
}

if(curr_health <= 0){
	instance_destroy()
}


sprite_index = sprite