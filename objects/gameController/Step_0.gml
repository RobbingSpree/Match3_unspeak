/// @description Insert description here
// You can write your code in this editor

if delay > 0
	delay --;

if delay <=0 {
	
	if dot_swap_a != noone && dot_swap_b != noone {
		//swap array locations
		var tempx = dot_swap_a.xx;
		var tempy = dot_swap_a.yy;
		dot_swap_a.xx = dot_swap_b.xx  
		dot_swap_a.yy = dot_swap_b.yy  
		dot_swap_b.xx = tempx  
		dot_swap_b.yy = tempy  
		//update array
		array[dot_swap_a.xx,dot_swap_a.yy] = dot_swap_a;
		array[dot_swap_b.xx,dot_swap_b.yy] = dot_swap_b;
		//reset values
		dot_swap_a = noone;
		touchxd = 0;
		touchyd = 0;
		dot_swap_b = noone;
		touchxs = 0;
		touchys = 0;
	}
	
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
	} else {
		setup = false;
	}
}
