if(movable){
	if keyboard_check(ord("A")){
		x -= xspd;
	}
	
	if keyboard_check(ord("D")){
		x += xspd;
	}
	
	if keyboard_check(ord("W")){
		y -= yspd;
	}
	
	if keyboard_check(ord("S")){
		y += yspd;
	}
}


