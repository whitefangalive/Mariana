/// @description hurt and death
// You can write your code in this editor

//HURT AND DEATH FINAl -----------------------------SPRITE INPUT

if (sprite_index = spr_yerino_hurt) {
sprite_index = spr_yerino;
}

//REAL DEATH FINAL
if (sprite_index = spr_yerino_die) {
	if (audio_is_playing(m_with_baited_breath_loop)) {
		switchMusicTo(m_with_baited_breath_loop, m_victory, false, 0);
	} else {
		switchMusicTo(m_with_baited_breath_start, m_victory, false, 0);
	}
	if (!array_contains(global.bosses_beaten, "Yerino")) {
		array_push(global.bosses_beaten, "Yerino");
	}
	instance_create_layer(x, y, "player_layer", vfx_glunk);
	instance_destroy()
}