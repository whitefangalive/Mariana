 /// @description get attacked
// You can write your code in this editor
// Hurt ----------------------------------------Sprite Input
with (obj_crabioli) {
	if obj_diver.attacking = 1 {
		if (InFrames = 0) {
		InFrames = maxInFrames;
		flashAlpha = 1;
		HP -= global.attack_damage;
		}
	}
}