// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function giveAchievement(AchievementName){
	if ((array_contains(obj_settings.achivements, AchievementName)) == -1) {
		array_push(obj_settings.achivements, AchievementName);
	}
}