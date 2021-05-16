// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_gem(xx,yy,mode,lv,type){
	switch lv {
		case 1: var g_lv= gem; break;
		case 2: var g_lv= gem_lv2; break;
		case 3: var g_lv= gem_lv3; break;
	}
	
	if mode == "fall" {
		if gameController.setup == true	
			var y_pos = y_start-gameController.height*offset;
		else 
			var y_pos = y_start;
	} else if mode == "stay"
		var y_pos = y_start+yy*offset;
	else 
		var y_pos = 5;
	
	var g = instance_create_layer(x_start+offset*xx,y_pos,"Instances",g_lv);
	g.dy = y_start + (gameController.height-yy)*offset;
	gameController.array[xx,yy] = g;
	g.image_index = type;
	g.xx = xx;
	g.yy = yy;
		
}

function all_stop(){
	var flag = true;
	with gem {
		if x != dx
			flag = false;
		if y != dy
			flag = false;
	}
	if flag == true
		return true;
	else
		return false;
}