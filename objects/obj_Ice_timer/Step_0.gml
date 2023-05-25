if (array_contains(global.inventory, "Ice")) {
	if (timer <= maxTimer) {
		timer++
	} else {
		if (array_length(global.inventory) > index) {
			if (global.inventory[index] == "Ice") {
				array_set(global.inventory, index, "Water");
				instance_destroy();
			} else {
				if (array_count(global.inventory, "Ice") - instance_number(obj_Ice_timer) == 0) {
					//if the index you recived is no longer ice, check if there is as many ice as there are ice timers
					// if there are as many, then ice has just moved around, turn one of them into water
					array_set(global.inventory, array_contains(global.inventory, "Ice"), "Water");
				}
			}
		} else {
			if (array_count(global.inventory, "Ice") - instance_number(obj_Ice_timer) == 0) {
				//if the index you recived is no longer ice, check if there is as many ice as there are ice timers
				// if there are as many, then ice has just moved around, turn one of them into water
				array_set(global.inventory, array_contains(global.inventory, "Ice"), "Water");
				instance_destroy();
			}
		}
	}
} else {
	instance_destroy();
}