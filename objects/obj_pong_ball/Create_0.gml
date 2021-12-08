/// @description Insert description here
// You can write your code in this editor

//start with a random veritical and horizontal speed

//pre-moveCollide
/*
speed_options = [-8,-7,-6,-5,5,6,7,8]
xspd = speed_options[irandom(array_length(speed_options) - 1)]
yspd = speed_options[irandom(array_length(speed_options) - 1)]
*/

yspd = -10
xspd = choose(-8,8)

//for precise movement
x_remainder = 0
y_remainder = 0

hit = false;

my_scale_x = 1;
my_scale_y = 1;

//enemy reactionn time randomizer
reaction_distance = room_width * 5/7;
//simulate ai is getting tired (it reacts slower)
reaction_tiredness = 0;
