global.paused = false;
mapOpen = false;
global.inventoried = false;

instance_deactivate_object(obj_pause_menu);
timer = 0;
run = 0;


if !variable_global_exists("next") {
	global.next = -1;
	global.previous_x = obj_diver.x;
}


randDir = irandom_range(0,0);
randDir2 = irandom_range(0,0);

despawn = -100;

cameraScale = 1;
scalingIntervalCheck = 0;
prevValue = 0;
doScaling = false;

scalingTimer = 0;

distanceFromDiver = 0;

healthOnce = false;

