targetX = 0;
targetY = 0;
damage = 1;

image_xscale = 1;
image_yscale = 1;


if (object_exists(obj_diver)) {
	targetX = obj_diver.x;
	targetY = obj_diver.y;
}

despawn = 320;
direction = point_direction(x, y, targetX, targetY);

audio_emitter = audio_emitter_create();

audio_emitter_falloff(audio_emitter, 20, 500, 2);


audio_play_sound_on(audio_emitter, sfx_zap, true, 1, global.volume_setting, 0, random_range(0.70, 0.75));

