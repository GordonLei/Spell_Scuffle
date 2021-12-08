/// @description Insert description here
// You can write your code in this editor

//if there are no more blocks, go to the start screen
if(instance_number(obj_bb_block) <= 0){
	room_goto(rm_start)
}
//if you "lose"...
else if(y + sprite_height >= room_height){
	room_goto(rm_start)
}



//move collision stuff
MoveCollide()

//juice stuff
if(hit){
	//my_scale_x = 4;
	//my_scale_y = my_scale_x;
	hit = false 
	
	//ShakeScreen(.5, 5);
}

//juice stuff
my_scale_x = lerp(my_scale_x, 1, .3);
my_scale_y = my_scale_x;
