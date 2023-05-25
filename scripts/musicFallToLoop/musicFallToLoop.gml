// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function musicFallToLoop(startMusic, loopedMusic){
	if (!audio_is_playing(startMusic) && (!audio_is_playing(loopedMusic))) {
		audio_sound_gain(loopedMusic, global.volume_setting, 0);
		audio_play_sound(loopedMusic, 1000, true);	
	}

}