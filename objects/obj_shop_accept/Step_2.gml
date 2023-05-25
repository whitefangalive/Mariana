// get input
key_w = keyboard_check_pressed(obj_settings.key_up);
key_s = keyboard_check_pressed(obj_settings.key_down);
key_accept = keyboard_check_pressed(obj_settings.key_select);

//storen number of otpions
op_length = array_length(option[menu_level]);

//move through menu

	pos += key_s - key_w;

if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length -1};

//using menu
if (!instance_exists(obj_text)) {
	
	if key_accept {
	audio_play_sound(sfx_select, 2, false, global.volume_setting);
		var _sml = menu_level;
		
		switch (menu_level) {
	
			//pause menu
			case 0:
				switch(pos) {
				//buy
				case 0:
					var price = getPrices(obj_shop.option[0, obj_shop.pos]);
					
						var deepCopyPrice = [];
						array_copy(deepCopyPrice, 0, price, 0, array_length(price));
						var deepCopyInventory = [];
						array_copy(deepCopyInventory, 0, global.inventory, 0, array_length(global.inventory));
							for (var i = 0; i < array_length(price); i++) {
								for (var j = 0; j < array_length(deepCopyInventory); j++) {
									if (deepCopyPrice[0] == deepCopyInventory[j]) {
										show_debug_message(deepCopyPrice);
										show_debug_message(deepCopyInventory);
										array_delete(deepCopyPrice, 0, 1);
										array_delete(deepCopyInventory, j, 1);
										j = array_length(deepCopyInventory) + 2;
									}
								}
							}
						
							if (array_length(deepCopyPrice) == 0) {
								price = getPrices(obj_shop.option[0, obj_shop.pos]);
								for (var i = 0; i < array_length(price); i++) {
									for (var j = 0; j < array_length(global.inventory); j++) {
										if (global.inventory[j] == price[i]) {
											show_debug_message(global.inventory[j]);
											array_delete(global.inventory, j, 1);
											j = array_length(global.inventory) + 2;
										}
									}
								}
								buyItem(obj_shop.option[0, obj_shop.pos]);
							} else {
								obj_muro.annoyance++;
								var article = "a ";
								var missingItem = deepCopyPrice[0];
								var firstLetter = string_char_at(missingItem, 0);
								if (firstLetter == "A" || firstLetter == "E" || firstLetter == "I" || firstLetter == "O") {
									article = "an ";
								}
								var rand = irandom_range(0, 2);
								if (obj_muro.annoyance < 12) {
									switch (rand) {
										case 0:
											say(["Looks like you're missing " + article + string(missingItem) + " Bucko."]);
										break;
										case 1:
											say(["The price says " + string(missingItem) + " You don't have that."]);
										break;
										case 2:
											say(["You need " + article + string(missingItem) + "."]);
										break;
									}
								} else {
									say(["You would stop that."]);
								}
								
							}
				break;
				//Drop
			    case 1: 
					instance_destroy();
				break;
				 }
			 break;
			}
		
		// set pos back
		if _sml != menu_level {pos = 0};
	
		//correct option length
		op_length = array_length(option[menu_level]);

	}
} else {
	instance_destroy();
}
