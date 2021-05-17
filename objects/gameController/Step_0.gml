/// @description Insert description here
// You can write your code in this editor

if dot_swap_a != noone && dot_swap_b != noone {
		//swap array location
		var tempx = dot_swap_a.xx;
		var tempy = dot_swap_a.yy;
		dot_swap_a.xx = dot_swap_b.xx  
		dot_swap_a.yy = dot_swap_b.yy  
		dot_swap_b.xx = tempx  
		dot_swap_b.yy = tempy  
		//update array
		array[dot_swap_a.xx,dot_swap_a.yy] = dot_swap_a;
		array[dot_swap_b.xx,dot_swap_b.yy] = dot_swap_b;
		//update location variables
		with dot_swap_a {
			dy = y_start + (gameController.height-yy)*offset;
			dx = x_start+ (xx)*offset;
		}
		with dot_swap_b {
			dy = y_start + (gameController.height-yy)*offset;
			dx = x_start+ (xx)*offset;
		}
		//reset values
		dot_swap_a = noone;
		touchxd = 0;
		touchyd = 0;
		dot_swap_b = noone;
		touchxs = 0;
		touchys = 0;
	}

if delay > 0
	delay --;

if delay <=0 {
	
	if loopy == height && all_stop() && instance_number(gem) < height*width {
		loopx = 0;
		loopy = 0;
	}
	
	if loopy < height {
		
		if array[loopx,loopy] == noone {
			var g = new_gem(loopx,loopy,"fall",1,irandom(6));
			delay = irandom_range(3,5);
		}
		
		loopx ++
		if loopx == width {
			loopx = 0;
			loopy++
		}
	} 
	
	if combo_lerp > 0 {
		combo_lerp -= 0.1;
		combo_count += 0.1;
	} else if combo_count >= combo_level {
		combo_count -= combo_level;
		combo_level++;
		if combo_level > 10
			room_goto(game_over);
	}
	
}
