if (needsToBeLoaded == true) {
	var _loadData = json_parse(obj_settings.needsLoading);
	var _loadEntity;
	_loadEntity = array_pop(_loadData);	
	if (loadPlayer == true) {
		with (obj_diver) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			global.player_health = _loadEntity.player_health;
			global.inventory = _loadEntity.inventory;
			global.bosses_beaten = _loadEntity.bosses_beaten;
			global.equipped = _loadEntity.equipped;
			obj_settings.timesEnteredSub = _loadEntity.timesEnteredSub;
			global.oxygen = _loadEntity.oxygen;
			obj_settings.achivements = _loadEntity.achivements;
			global.oceanDepth = _loadEntity.oceanDepth;
			var num_chests = _loadEntity.num_chests;
			var num_items = _loadEntity.num_items;
			var num_dead = _loadEntity.num_dead;
			var num_fish = _loadEntity.num_fish;
			var num_eggs = _loadEntity.num_eggs;
		}
	} else {
		with (obj_diver) {
			var num_chests = _loadEntity.num_chests;
			var num_items = _loadEntity.num_items;
			var num_dead = _loadEntity.num_dead;
			var num_fish = _loadEntity.num_fish;
			var num_eggs = _loadEntity.num_eggs;
		}
	}
	with (obj_dead_diver) {instance_destroy();}
	for (var i = 0; i < num_dead; i++) {	
		_loadEntity = array_pop(_loadData);
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, "player_layer", asset_get_index(_loadEntity.obj))) {
			container = _loadEntity.container;
			opened = _loadEntity.opened;
			image_xscale = _loadEntity.image_xscale;
		}
	}
	
	with (obj_chest) {instance_destroy();}
	for (var i = 0; i < num_chests; i++) {	
		_loadEntity = array_pop(_loadData);
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			container = _loadEntity.container;
			opened = _loadEntity.opened;
			image_xscale = _loadEntity.image_xscale;
		}
	}
	//corpse
	//do eggs
	with(obj_fish_egg) {instance_destroy();}
	for (var i = 0; i < num_eggs; i++) {	
		_loadEntity = array_pop(_loadData);
	
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			age = _loadEntity.age;
			hue = _loadEntity.hue;
			fish = _loadEntity.fish;
		}
	}
		//do creatures
	with (obj_creature_parent) {instance_destroy();}
	with(obj_creature_accesory) {instance_destroy();}
	for (var i = 0; i < num_fish; i++) {	
		_loadEntity = array_pop(_loadData);
	
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			HP = _loadEntity.HP;
			age = _loadEntity.age;
			laidEggs = _loadEntity.laidEggs;
			layingEggsAge = _loadEntity.layingEggsAge;
		}
	}
	//Do items
	with (obj_item_parent) {instance_destroy();}
	for (var i = 0; i < num_items; i++) {	
		_loadEntity = array_pop(_loadData);
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			randDir = _loadEntity.randDir;
			randDir2 = _loadEntity.randDir2;
			image_angle = _loadEntity.image_angle;
			despawn = _loadEntity.despawn
		}
	}
	needsToBeLoaded = false;
}

// load after death
if (needsDeathLoaded == true) {
	global.player_health = global.max_player_health;
	
	global.oxygen = 60;
	switchMusicTo(m_peace_of_mind, sfx_move_selected, false, 100);
	if (file_exists(string(Room1) + ".save")) {
		var _buffer = buffer_load(string(Room1) + ".save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		obj_settings.needsLoading = _string;
		var _loadData = json_parse(_string);
		
	}
	var _loadEntity;
	_loadEntity = array_pop(_loadData);
	show_debug_message(_loadEntity);
	spawnX = _loadEntity.x;
	spawnY = _loadEntity.y;
	location1 = _loadEntity.location;
	
	global.inventory = [];
	obj_diver.inventory_full = false;
	global.oceanDepth = 425;
	var num_chests = _loadEntity.num_chests;
	var num_items = _loadEntity.num_items;
	var num_dead = _loadEntity.num_dead;
	var num_fish = _loadEntity.num_fish;
	var num_eggs = _loadEntity.num_eggs;
	
	for (var i = 0; i < num_dead; i++) {
		_loadEntity = array_pop(_loadData);
		
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			container = _loadEntity.container;
			opened = _loadEntity.opened;
			image_xscale = _loadEntity.image_xscale;
		}
	}
	
	// Do chests
	with (obj_chest) {instance_destroy();}
	for (var i = 0; i < num_chests; i++) {	
		_loadEntity = array_pop(_loadData);
		
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			container = _loadEntity.container;
			opened = _loadEntity.opened;
			image_xscale = _loadEntity.image_xscale;
		}
	}
	//do eggs
	with(obj_fish_egg) {instance_destroy();}
	for (var i = 0; i < num_eggs; i++) {	
		_loadEntity = array_pop(_loadData);
	
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			age = _loadEntity.age;
			hue = _loadEntity.hue;
			fish = _loadEntity.fish;
		}
	}
	//do creatures
	with (obj_creature_parent) {instance_destroy();}
	with(obj_creature_accesory) {instance_destroy();}
	for (var i = 0; i < num_fish; i++) {	
		_loadEntity = array_pop(_loadData);
	
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			HP = _loadEntity.HP;
			age = _loadEntity.age;
			laidEggs = _loadEntity.laidEggs;
			layingEggsAge = _loadEntity.layingEggsAge;
		}
	}
	//Do items
	with (obj_item_parent) {instance_destroy();}
	for (var i = 0; i < num_items; i++) {	
		_loadEntity = array_pop(_loadData);
	
		with (instance_create_layer(0, 0, "player_layer", asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			randDir = _loadEntity.randDir;
			randDir2 = _loadEntity.randDir2;
			image_angle = _loadEntity.image_angle;
			despawn = _loadEntity.despawn
		}
	}
	needsDeathLoaded = false;
}
