// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveCollide(){
	
	var full_xspd = xspd + x_remainder
	var full_yspd = yspd + y_remainder
	
	x_remainder = full_xspd % 1;
	y_remainder = full_yspd % 1;
	
	var xspd_floored = floor(abs(full_xspd)) * sign(full_xspd)
	
	if (xspd_floored != 0){
		for (var i=0; i < abs(xspd_floored); i++) {

			if(place_meeting(x+sign(xspd_floored),y,obj_collidable)){
				hitThing = instance_place(x+sign(xspd_floored),y,obj_collidable)
				hitThing.hit = true
				xspd *= -1
				x_remainder = 0
				hit = true;
				
				audio_play_sound(snd_bounce, 1, false)
				
				
				break;
			}
			x+= sign(xspd_floored)
		}
	}
	
	var yspd_floored = floor(abs(full_yspd)) * sign(full_yspd)
	
	if (yspd_floored != 0){
		for (var i=0; i < abs(yspd_floored); i++) {
			if(place_meeting(x,y+sign(yspd_floored),obj_collidable)){
				hitThing = instance_place(x,y+sign(yspd_floored),obj_collidable)
				hitThing.hit = true
				yspd *= -1
				y_remainder = 0
				hit = true;
				
				audio_play_sound(snd_bounce, 1, false)
				
				break;
			}
			y+= sign(yspd_floored)
		}
	}
	
	
	if x > room_width
	or x < 0{
		xspd *= -1	
		x_remainder = 0
		
		audio_play_sound(snd_bounce, 1, false)
	}

	if y > room_height
	or y < 0{
		yspd *= -1	
		y_remainder = 0
		
		audio_play_sound(snd_bounce, 1, false)
	}
}

/*
function MoveCollideBullet(){
	
	var full_xspd = xspd + x_remainder
	var full_yspd = yspd + y_remainder
	
	x_remainder = full_xspd % 1;
	y_remainder = full_yspd % 1;
	
	var xspd_floored = floor(abs(full_xspd)) * sign(full_xspd)
	
	if (xspd_floored != 0){
		for (var i=0; i < abs(xspd_floored); i++) {
			if(instance_place(x,y,obj_bh_player) == noone){
				show_debug_message(place_meeting(x+sign(xspd_floored),y,obj_bh_boss))
				if(place_meeting(x+sign(xspd_floored),y,obj_bh_boss)){
					boss_id = instance_place(x+sign(xspd_floored),y,obj_collidable)
					boss_id.curr_health--;
					boss_id.sprite = spr_bh_boss_damaged
					boss_id.state = "damaged"
					instance_destroy(boss_id)
			
				
					break;
				}
				
				
				else if(place_meeting(x+sign(xspd_floored),y,obj_collidable)){
					hitThing = instance_place(x+sign(xspd_floored),y,obj_collidable)
					hitThing.hit = true
					xspd *= -1
					x_remainder = 0
					hit = true;
				
					audio_play_sound(snd_bounce, 1, false)
			
				
					break;
				}
				
			}
			x+= sign(xspd_floored)
			
		}
	}
	
	var yspd_floored = floor(abs(full_yspd)) * sign(full_yspd)
	
	if (yspd_floored != 0){
		for (var i=0; i < abs(yspd_floored); i++) {
			if(instance_place(x,y,obj_bh_player)  == noone){
				if(place_meeting(x,y+sign(yspd_floored),obj_collidable)){
					hitThing = instance_place(x,y+sign(yspd_floored),obj_collidable)
					hitThing.hit = true
					yspd *= -1
					y_remainder = 0
					hit = true;
				
					audio_play_sound(snd_bounce, 1, false)
				
					break;
				}
				
			}
			y+= sign(yspd_floored)
		}
	}
	
	
	if x > room_width
	or x < 0{
		xspd *= -1	
		x_remainder = 0
		
		audio_play_sound(snd_bounce, 1, false)
	}

	if y > room_height
	or y < 0{
		yspd *= -1	
		y_remainder = 0
		
		audio_play_sound(snd_bounce, 1, false)
	}
}
*/