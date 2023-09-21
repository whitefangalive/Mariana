//finds the room path from roomFrom to a root room like room1 2 or 3
function find_room_path(roomFrom) {
	if (roomFrom == Room1 || roomFrom == Room2 || roomFrom == Room3) {
		return [roomFrom];
	}
	var path = [];
	
	var roomString = string(room_get_name(roomFrom));
	
	
	for (var i = 0; i < string_count("_", roomString); i++) {
		var last = string_length(roomString);
		var number = real(string_char_at(roomString, last));
		while (number > 1) {
			array_push(path, asset_get_index(roomString));
			number--;
			roomString = string_insert(number, roomString, last);
			roomString = string_delete(roomString, last+1, 1);
		}
		array_push(path, asset_get_index(roomString));
		var index = string_contains_at(roomString, "_");
		roomString = string_delete(roomString, index, string_length(roomString) - index + 1);
		array_push(path, asset_get_index(roomString));
	}
	
	return path;
}