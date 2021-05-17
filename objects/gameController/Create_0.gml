/// @description Insert description here
// You can write your code in this editor
height = 8;
width = 8;

#macro x_start 86
#macro y_start 60

#macro offset 48

delay = 3;
setup = false;
touchxs = 0;
touchys = 0;
touchxd = 0;
touchyd = 0;
dot_swap_a = noone;
dot_swap_b = noone;

combo_count = 0;
combo_lerp = 0;
combo_level = 1;
/*
for ( var i = 0; i< width; i++;)
	for (var k = 0; k<height; k++) {
		var ge = instance_create_layer(x_start+offset*i,y_start+k*offset,"Instances",gem);
		ge.image_index = irandom(6)+1
	}
	
*/

//set_the_board();
loopx = 0;
loopy = 0;
array = [];
for ( var i = 0; i< width; i++;)
	for (var k = 0; k<height; k++) 
		array[i,k] = noone;