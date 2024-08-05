shine = instance_create_layer(x, y, "behind_diver", vfx_shine);
shine.image_blend = make_color_rgb(9, 255, 226);
shine.scaled = 6;
shine.spe = 0.5;
shine.image_alpha = 0.25;
shine.sprite_index = spr_jellyfish_glow;