/**
* Checks to see if a string contains the substring returns index,
**/
function string_contains_at(str, substring){
	var result = -1;
	for (var i = 0; i < string_length(str); i++) {
		var copy = string_copy(str, i, string_length(substring));
		if (copy == substring) {
			result = i;
		}
	}
	return result;
}