/// @description  Initialize the ship
scr_ship_init(30,-1,1.85,6,0,0);

direction = irandom(360);
dir = direction;
alarm[1] = room_speed*5;
shield_mask = sprite_index;
state = "patrol";
patrol = false;

to_origin = false;
to_patrol = true;

origin_x = x;
origin_y = y;

patrol_x = x;
patrol_y = y;

patrol_x2 = x;
patrol_y2 = y;

patrol_x3 = x;
patrol_y3 = y;

patrol_x4 = x;
patrol_y4 = y;

patrol_x5 = x;
patrol_y5 = y;

image_xscale = 2;
image_yscale = 2;

foe = noone;