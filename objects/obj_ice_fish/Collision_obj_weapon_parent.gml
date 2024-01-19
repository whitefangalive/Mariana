 /// @description get attacked
// You can write your code in this editor
if obj_diver.attacking = 1 {
	if (InFrames = 0) {
		InFrames = maxInFrames;
		flashAlpha = 1;
		HP -= global.attack_damage;
	}
}
