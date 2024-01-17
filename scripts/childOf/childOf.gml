// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function childOf(parent, cx, cy, cr, cs){
		var angleBetween = point_direction(parent.x, parent.y, cx+parent.x, cy+parent.y) + 90;
		var hypot = sqrt(sqr(cx) + sqr(cy));
		var TentacleX = parent.x + ((hypot * image_xscale) * dsin(angleBetween + parent.image_angle));
		var TentacleY = parent.y + ((hypot * image_yscale) * dcos(angleBetween + parent.image_angle));
		x = TentacleX;
		y = TentacleY;
		
		image_angle = parent.image_angle + cr;
		image_xscale = parent.image_xscale * cs;
		image_yscale = parent.image_yscale * cs;
		
}