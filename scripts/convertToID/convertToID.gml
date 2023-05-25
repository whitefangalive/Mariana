// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ReportAsBugPlease(name){
	switch (name) {
		case "Oxygen Tank": return obj_oxygen_tank; break;
		case "Ice": return obj_ice; break;
		case "Soggy Sandwich": return obj_soggy_sandwich; break;
		case "Mauler Fin": return obj_mauler_fin; break;
		case "Fish Eye": return obj_fish_eye; break;
		default: return 0 break;
	}
}