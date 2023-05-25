/**
* converts string into object or sprite
* type is either "spr" or "obj" depeding on what you want to convert TO, both in string form
*/

function convertTo(type, name){
		var underScoredName = string_replace_all(name, " ", "_");
	
		var objName = asset_get_index(type + "_" + underScoredName);
		if (objName == -1) {
			show_debug_message((type + "_" + underScoredName));
		}
		return objName;
}