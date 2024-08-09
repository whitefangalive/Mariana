hand1 = instance_create_depth(x, y, depth-1, obj_clock_hand);
hand1.image_index = 0;
hand1.rotationSpeed = 0.1;
hand1.image_xscale = image_xscale;
hand1.image_yscale = image_yscale;


hand2 = instance_create_depth(x, y, depth-1, obj_clock_hand);
hand2.image_index = 1;
hand2.rotationSpeed = 0.0125;
hand2.image_xscale = image_xscale;
hand2.image_yscale = image_yscale;
