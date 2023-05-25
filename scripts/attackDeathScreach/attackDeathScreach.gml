// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attackDeathScreach(){
swim_speed = 6;

		if (loop >= 1 && loop < 60) {
			move_towards_point(x+800,y, swim_speed);
		}
		if (loop >= 60 && loop < 100) {
			move_towards_point(obj_diver.x+800,obj_diver.y, swim_speed);
		}
		if (loop >= 100 && loop < 180) {
			swim_speed = 9;
			sprite_index = spr_yerino_mouth_move;
			move_towards_point(obj_diver.x-500,obj_diver.y, swim_speed);
		}
		if (loop >= 180 && loop < 240) {
			move_towards_point(obj_diver.x+500,obj_diver.y, swim_speed);
			sprite_index = spr_yerino;
		}
swim_speed = default_swim_speed;
}