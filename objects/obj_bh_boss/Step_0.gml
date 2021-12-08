/// @description Insert description here
// You can write your code in this editor

//move collision stuff		
MoveCollide()

//move states back to neutral state
if(timer){
	timer--;
	if(timer <= 0){
		timer = 0;
		state = "neutral"
		sprite = spr_bh_boss_neutral
	}
}

//if health is 0, you beat the boss
if(curr_health <= 0){
	instance_destroy()
}


sprite_index = sprite