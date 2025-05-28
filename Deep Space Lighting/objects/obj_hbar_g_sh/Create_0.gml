// Define left and right limits for the slider
rightLimit = x + (sprite_width / 2) - (image_xscale * 26);
leftLimit = x - (sprite_width / 2) + (image_xscale * 26);

// Create the slider instance
a = instance_create(x, y, obj_hslider_g_sh);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.barLength = sprite_width;
a.rightLimit = rightLimit;
a.leftLimit = leftLimit;
a.x = x;