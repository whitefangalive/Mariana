// Script assets have changed for v2.3.0 see
//MUSIC BE USED IN A STEP
function stopDeadMusic(song){
	if ((audio_sound_get_gain(song) <= 0) && (obj_sounds.musicTimer <= -120)) {
	if global.volume_setting != 0 {
audio_stop_sound(song);
	}
}
}