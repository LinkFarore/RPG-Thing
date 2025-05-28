//work out the top and bottom limits
topLimit = y-(sprite_height/2)+(image_xscale*75);
bottomLimit = y+(sprite_height/2)-(image_xscale*75);

//create the slider for this bar and assign it some values
a = instance_create(x, y, obj_vslider);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.barLength = sprite_height;
a.topLimit = topLimit;
a.bottomLimit = bottomLimit;
a.y = bottomLimit;

