 /// @description get attacked
// You can write your code in this editor
// Hurt ----------------------------------------Sprite Input
if obj_diver.attacking = 1 {
	if (InFrames = 0) {
	InFrames = maxInFrames;
	flashAlpha = 1;
	sprite_index = spr_shark_hurt;
	HP -= global.attack_damage;
	moving = 1;
	}
}

