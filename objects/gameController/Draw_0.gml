/// @description Insert description here
// You can write your code in this editor

/*
for ( var i = 0; i< width; i++;)
	for (var k = 0; k<height; k++) 
		if array[i,k] != noone
			draw_text(500+20*i,300-20*k,"1");
		else 
			draw_text(500+20*i,300-20*k,"0");
			
draw_text(room_width-20,40,loopx);
draw_text(room_width-20,60,loopy);
*/

//draw progress bar
var combo_display = min(combo_count,combo_level);

var percent = combo_display/combo_level;
draw_rectangle(55,room_height-80,55+(percent*400),room_height-20,false);
draw_rectangle(55,room_height-80,455,room_height-20,true);

//draw lady

for(var i=0; i<combo_level; i++;) {
	draw_sprite(lady_spr,i,600,50);
}