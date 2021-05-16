
if check_down {
	if yy > 0 && gameController.array[xx,yy-1] == noone {
		gameController.array[xx,yy] = noone;
		while yy > 0 && gameController.array[xx,yy-1] == noone
			yy--		
		
		dy =  y_start + (gameController.height-yy)*offset;
		gameController.array[xx,yy] = self;
		var tempy = yy;
		var tempx = xx;
		with gem {
			if tempx == xx && tempy < yy
				check_down = true;
		}
	} else 
		check_down = false;
	
}

if instance_number(gem) < gameController.height*gameController.width
	check_down = true;


if dy > y //assume object needs to fall
	falling = true;
	
if falling {
	//falling movement
	spd += grav;
	spd = min(spd,max_spd);	
	if y + spd > dy {
		y = dy;
		falling = false;
		if all_stop()
			check_for_match(gameController.array);
	}else 
		y+=spd;
} else {
	//sliding movement
	if dx != x {
		if abs(x)-abs(dx) > 3 {
			x= lerp(x,dx,0.1);
		} else {
			x=dx;
			if all_stop()
				check_for_match(gameController.array);
		}
	}
	if dy != y {
		if abs(y)-abs(dy) > 3 {
			y= lerp(y,dy,0.1);
		} else {
			y=dy;
			if all_stop()
				check_for_match(gameController.array);
		}
	}
} 
	

if gameController.dot_swap_a != noone && gameController.dot_swap_b != noone  {
	if gameController.dot_swap_a == self {
		dx = gameController.touchxd;
		dy = gameController.touchyd;
	}
	if gameController.dot_swap_b == self {
		dx = gameController.touchxs;
		dy = gameController.touchys;
	}
}


