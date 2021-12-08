/// @description Insert description here
// You can write your code in this editor

approach_timer =  irandom_range(4,9) * room_speed;
hit_timer = 2 * room_speed; //2 second window that you can hit the ball
style_types = ["straight", "curve"]
style = choose("straight", "curve")
sprite = spr_baseball_coming