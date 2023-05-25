// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function paused(state){
	if state = true {

		instance_deactivate_object(obj_inventory);
		instance_deactivate_object(obj_weapon_parent);
		instance_deactivate_object(obj_map);
		global.inventory_menu = false;
		global.inventoried = false;
		instance_deactivate_object(obj_any_behavior_parent);
		instance_deactivate_object(obj_diver);
	} else {
		instance_deactivate_object(obj_pause_menu);
		instance_activate_object(obj_diver);
		instance_activate_object(obj_inventory);
		instance_activate_object(obj_weapon_parent);
		instance_activate_object(obj_map);

		instance_activate_object(obj_any_behavior_parent);
	}
}