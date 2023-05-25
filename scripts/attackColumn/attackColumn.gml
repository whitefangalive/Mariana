// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attackColumn(){
swim_speed = swim_speed + 8;

		if (loop >= 1 && loop < 60) {
			sprite_index = spr_yerino_mouth_move;
			
			if (image_xscale > 0) {
			image_angle = 90;
			} else {
			image_angle = -90;
			}
			move_towards_point(x,y-500, swim_speed);
		}
		if (loop >= 60 && loop < 110) {
			swim_speed = 3;
			if (image_xscale < 0) {
			image_angle = 90;
			} else {
			image_angle = -90;
			}
			move_towards_point(obj_diver.x,obj_diver.y-500, swim_speed);
		}
		if (loop >= 110 && loop < 180) {
			move_towards_point(obj_diver.x,obj_diver.y, swim_speed);
		}
		if (loop >= 180 && loop < 240) {
			image_angle = 0;
			swim_speed = default_swim_speed;
			swim_speed =+ 8;
			move_towards_point(obj_diver.x-400,obj_diver.y, swim_speed);
			sprite_index = spr_yerino;
		}
swim_speed = default_swim_speed;
}