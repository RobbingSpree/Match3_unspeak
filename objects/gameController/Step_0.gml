/// @description Insert description here
// You can write your code in this editor

if delay > 0
	delay --;

if delay <=0 && instance_number(gem) < height*width {
	//find left most coll missing a gem
	var col = -1;
	var row = -1;
	for (var i=0; i<width; i++;) 
		for (var k=0; k<height; k++) {
			if array[i,k] == noone {
				col = i;
				row = k;
				break;
				break;
			}
		}
	if col != -1 || row != -1 {
		var g = instance_create_layer(x_start+offset*row,y_start-height*offset,"Instances",gem);
		g.dy = y_start + col*offset;
		array[col,row] = g;
		g.image_index = 2;
		g.xx = col;
		g.yy = row;
	}
	delay = irandom_range(3,5);
}

if all_fall {
	///update dy
}