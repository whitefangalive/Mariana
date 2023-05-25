// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadGame(saveName, doLoadPlayer) {
	if (file_exists(saveName)) {
		var _buffer = buffer_load(saveName);
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		obj_settings.needsLoading = _string;
		var _loadData = json_parse(_string);

		var _loadEntity = array_pop(_loadData);	
		room_goto(_loadEntity.location);
		obj_settings.needsToBeLoaded = true;
		//weather the load is for loading the game, or loading a level
		obj_settings.loadPlayer = doLoadPlayer;
	
		show_debug_message("Game loaded: " + _string);
	}
}