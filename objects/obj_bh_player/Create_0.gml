/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

x= room_width/2
y= room_height-128

mspd = 8
xspd = 0
yspd = 0
x_remainder = 0
y_remainder = 0

my_scale_x = 1;
my_scale_y = 1;

//state can be neutral, shooting, tired, damaged 
state = "neutral"

timer_max = 2 * room_speed 
timer = 0.0

sprite = spr_bh_player_neutral