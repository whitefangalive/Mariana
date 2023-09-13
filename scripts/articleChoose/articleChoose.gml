// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function articleChoose(word){
	var article = "a ";
	var firstLetter = string_char_at(word, 0);
	var lastLetter = string_char_at(word, string_length(word));
	var secondToLastLetter = string_char_at(word, string_length(word) - 1);
	if (firstLetter == "A" || firstLetter == "E" || firstLetter == "I" || firstLetter == "O") {
	article = "an ";
	}
	if (lastLetter == "s" && (secondToLastLetter != "s") && (secondToLastLetter != "u") && (secondToLastLetter != "i")) {
		article = "";
	}
	return article;
}