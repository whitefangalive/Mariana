max_oxygen = 60;
if !variable_global_exists("oxygen") {
	global.oxygen = max_oxygen;
}

refilling = 0;
oxygen_time = 1840;
oxygen_timer = oxygen_time;