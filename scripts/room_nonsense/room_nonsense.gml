// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function check_for_match(a){
	var h = gameController.height;
	var w = gameController.width;
	
	for (var i=0; i<w; i++) 
		for (var k=0; k<h; k++) {
			if a[i,k] != noone {
				var val = a[i,k].image_index;
				//check right 
				if i<w-2 && a[i+1,k] != noone && a[i+1,k].image_index == val && a[i+2,k] != noone && a[i+2,k].image_index == val 
					match(i,k,"horrozontal",val,a);
				//check up
				if k<h-2 && a[i,k+1] != noone && a[i,k+1].image_index == val && a[i,k+2] != noone && a[i,k+2].image_index == val
					match(i,k,"vertical",val,a);
			}
		}
	
	with gem
		check_down = true;
}
	

function match(xx,yy,dir,val,a) {
	var height = gameController.height;
	var width = gameController.width;
	
	var h = 1;
	var w = 1;
	
	if dir == "horrozontal"
		h=0;
	if dir == "vertical"
		w=0;
	
	//play match sound
	audio_play_sound(MAtch_3_sound,1,false);
	//destroy items in match
	instance_destroy(a[xx,yy]);
	gameController.array[xx,yy] = noone;
	instance_destroy(a[xx+w,yy+h]);
	gameController.array[xx+w,yy+h] = noone;
	w+=sign(w);
	h+=sign(h);
	instance_destroy(a[xx+w,yy+h]);
	gameController.array[xx+w,yy+h] = noone;
	w+=sign(w);
	h+=sign(h);
	//check for match 4
	if xx+w < width && yy+h < height && a[xx+w,yy+h] != noone && a[xx+w,yy+h].image_index == val {
		instance_destroy(a[xx+w,yy+h]);
		gameController.array[xx+w,yy+h] = noone;
		w+=sign(w);
		h+=sign(h);
		//check for match 5
		if xx+w < width && yy+h < height && a[xx+w,yy+h] != noone && a[xx+w,yy+h].image_index == val {
			instance_destroy(a[xx+w,yy+h]);
			gameController.array[xx+w,yy+h] = noone;
			//make a lv 3 gem
			var gum = new_gem(xx,yy,"stay",3,val);
		} else {
			//make a lev 2 gem
			var gum = new_gem(xx,yy,"stay",2,val);
		}
	}
	gameController.combo_lerp++;
}