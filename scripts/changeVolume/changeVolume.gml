// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function changeVolume(song){
	if (audio_is_playing(song)) {audio_sound_gain(song, global.volume_setting, 0);}
}