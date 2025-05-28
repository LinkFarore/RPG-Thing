//work out the left and right limits
rightLimit = x+(sprite_width/2)-(image_xscale*26);
leftLimit = x-(sprite_width/2)+(image_xscale*26);

//create the slider for this bar and assign it some values
a = instance_create(x, y, obj_hslider);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.barLength = sprite_width;
a.rightLimit = rightLimit;
a.leftLimit = leftLimit;
a.x = x;

