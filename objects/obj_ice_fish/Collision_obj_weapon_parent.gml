 /// @description get attacked
// You can write your code in this editor
if obj_diver.attacking = 1 {
if (InFrames = 0) {
move_towards_point(obj_diver.x,obj_diver.y, - 1.2);
InFrames = maxInFrames;
sprite_index = spr_ice_fish_hurt;
HP -= global.attack_damage;
}
}
