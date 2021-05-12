/// @description Insert description here
// You can write your code in this editor
height = 8;
width = 8;

x_start = 86;
y_start = 126;

offset = 64;

delay = 3;

all_stop = false;
all_fall = false;

/*
for ( var i = 0; i< width; i++;)
	for (var k = 0; k<height; k++) {
		var ge = instance_create_layer(x_start+offset*i,y_start+k*offset,"Instances",gem);
		ge.image_index = irandom(6)+1
	}
	
*/

//set_the_board();

array = [];
for ( var i = 0; i< width; i++;)
	for (var k = 0; k<height; k++) 
		array[i,k] = noone;