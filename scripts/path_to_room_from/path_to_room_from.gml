// finds the room path from roomFrom, to roomTo
function path_to_room_from(roomFrom, roomTo){
	var path = [];
	if (roomFrom == roomTo) {
		return [roomFrom];
	}
	
	var roomFromPath = find_room_path(roomFrom);
	var roomToPath = find_room_path(roomTo);
	
	roomToPath = array_reverse(roomToPath);
	array_delete(roomToPath, 0, 1);
	path = array_concat(roomFromPath, roomToPath);
	return path;
}