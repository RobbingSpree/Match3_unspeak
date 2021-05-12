/// @description Insert description here
// You can write your code in this editor
if dy > y //assume object needs to fall
	falling = true;
	
if falling {
	spd += grav;
	spd = min(spd,max_spd);	
	if y + spd > dy {
		y = dy;
		falling = false;
	}else 
		y+=spd;
}