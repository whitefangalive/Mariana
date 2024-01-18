// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawChildOf(sprite, subimg, cx, cy, cxs, cys, cr, color, alpha, parent){
		cx = cx * sign(parent.image_xscale);
		cy = cy * sign(parent.image_yscale);
		var angleBetween = point_direction(parent.x, parent.y, cx+parent.x, cy+parent.y) + 90;
		var hypot = sqrt(sqr(cx) + sqr(cy));
		var TentacleX = parent.x + ((hypot * 1) * dsin(angleBetween + parent.image_angle));
		var TentacleY = parent.y + ((hypot * 1) * dcos(angleBetween + parent.image_angle));
		var fx = TentacleX;
		var fy = TentacleY;
		
		var fimage_angle = parent.image_angle + cr;
		var fimage_xscale = sign(parent.image_xscale) * cxs;
		var fimage_yscale = sign(parent.image_yscale) * cys;
		
		draw_sprite_ext(sprite, subimg, fx, fy, fimage_xscale, fimage_yscale, fimage_angle, color, alpha);
}