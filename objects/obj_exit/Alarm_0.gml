room_goto(destination);
loadGame(string(destination) + ".save", false);
	
audio_stop_sound(m_surface_tension);
audio_sound_gain(m_hull_sale, 0, 5000);