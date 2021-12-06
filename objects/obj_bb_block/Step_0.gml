/// @description Insert description here
// You can write your code in this editor

MoveCollide()

if (hit)
{
	block_health -= 1
	hit = false
}

if(y >= room_height){
	y = 0;
}

if block_health<1{
	instance_destroy()	
	//SpawnParticles(20, x, y, -10, 10, -5, -10, 1 * room_speed);
}