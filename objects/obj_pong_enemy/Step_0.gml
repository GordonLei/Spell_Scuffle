/// @description Insert description here
// You can write your code in this editor

if (obj_pong_ball.y < y) currentSpeed = -maxSpeed
else currentSpeed = maxSpeed

y = clamp(y + currentSpeed, 0, room_height - sprite_height)
