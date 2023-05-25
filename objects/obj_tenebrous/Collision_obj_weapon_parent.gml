 /// @description get attacked

// Hurt ----------------------------------------Sprite Input
if obj_diver.attacking = 1 {
	if (InFrames = 0) {
	InFrames = maxInFrames;
	flashAlpha = 1;
	HP -= global.attack_damage;
	moving = 1;
	}
}

