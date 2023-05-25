// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function switchMusicTo(switchFrom, switchTo, looped, fadeTime){
	
	audio_sound_gain(switchFrom, 0, fadeTime)

	audio_sound_gain(switchTo, 0, 0);
	audio_sound_gain(switchTo, global.volume_setting, fadeTime * 2.5);
	audio_play_sound(switchTo, 1000, looped);

}