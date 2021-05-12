// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_the_board(){
	
	var h = gameController.height;
	var w = gameController.width;
	var unit = 64;
	var topx = gameController.x_start;
	var topy = gameController.y_start- 300;
	var boty = gameController.y_start + h*unit;
	
	for ( var i=0; i<w; i++) 
		for (var k=0; k<h; k++) {
			var gum = instance_create_layer(topx+i*unit,topy-k*unit,"Instances",gem);
			gum.dy=boty-k*unit;
			gum.image_index = irandom(6)+1;
		}
	
}