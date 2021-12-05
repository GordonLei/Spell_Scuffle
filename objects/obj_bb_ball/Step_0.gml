/// @description Insert description here
// You can write your code in this editor

if(instance_number(obj_bb_block) <= 0){
	room_goto(rm_start)
}
else if(y + sprite_height >= room_height){
	room_goto(rm_start)
}

MoveCollide()

if(hit){
	my_scale_x = 4;
	my_scale_y = my_scale_x;
	hit = false 
	
	//ShakeScreen(.5, 5);
}

my_scale_x = lerp(my_scale_x, 1, .3);
my_scale_y = my_scale_x;



/*
if collision_circle(x,y,8,obj_block,false,false){
	near_block = instance_nearest(x,y,obj_block)
	near_block.block_health -=1
	
}