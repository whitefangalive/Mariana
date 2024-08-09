if (opening || array_contains(obj_settings.achivements, "GateOpened") != -1) {
	giveAchievement("GateOpened");
	var index = (array_contains(obj_settings.achivements, "GateOpened"));
	if (array_length(obj_settings.achivements) == index + 1) {
		giveAchievement(0);
	}
	
	var frameTemp = obj_settings.achivements[index + 1] + curveSpeed;
	array_set(obj_settings.achivements, index + 1, frameTemp);
	
	frame = obj_settings.achivements[index + 1];
	x = followAnimationCurve(a_slowStartAbruptEnd,startingX , sprite_width-500);
}