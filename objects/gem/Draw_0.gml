
draw_self();

if gameController.dot_swap_a == self || gameController.dot_swap_b == self {
	draw_sprite(dow_glow_spr,0,x,y);
}