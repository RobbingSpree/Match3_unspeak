/// @description Insert description here
// You can write your code in this editor

/*
for ( var i = 0; i< width; i++;)
	for (var k = 0; k<height; k++) 
		if array[i,k] != noone
			draw_text(500+20*i,300-20*k,"1");
		else 
			draw_text(500+20*i,300-20*k,"0");
*/
/*
draw_set_halign(fa_right);
draw_text(room_width-20,40,dot_swap_a);
draw_text(room_width-20,60,dot_swap_b);
draw_set_halign(-1);
*/
//draw progress bar
var combo_display = min(combo_count,combo_level);

var percent = combo_display/combo_level;
var wid = 370;
draw_set_color(c_blue);
draw_rectangle(70,room_height-80,70+(percent*wid),room_height-20,false);
draw_set_color(c_white);
draw_rectangle(70,room_height-80,70+wid,room_height-20,true);

//draw lady
var first = 2;
var left = 500;
var down = 30;
var scale = 0.3;
draw_sprite_ext(lady_spr,1,left,down,scale,scale,0,c_white,1);
for(var i=1; i<=combo_level; i++;) {
	draw_sprite_ext(lady_spr,first+i,left,down,scale,scale,0,c_white,1);
}