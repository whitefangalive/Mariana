// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function delt(deltDamage, Fx, Fy) {
	if (obj_diver.InFrames = 0) {
		obj_diver.InFrames = obj_diver.maxInFrames;
		global.player_health -= deltDamage;
		obj_diver.flashAlpha = 1;
		obj_diver.attackedFromX = Fx;
		obj_diver.attackedFromY = Fy;
		
		var damSound = (asset_get_index("sfx_damageTake" + string(irandom_range(0,2))));
		audio_sound_gain(damSound, global.volume_setting, 0);
		audio_play_sound(damSound, 6, false);
	}
}