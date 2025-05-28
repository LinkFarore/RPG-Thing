/// @description  Initialize the ship
scr_ship_init(5,-1,3,30,0,0,0,0);
shield_mask = sprite_index;
shield = false;
alarm[2] = room_speed*5;
hit = false;
direction = irandom(360);
dir = direction;
if (instance_exists(par_player)) {
    foe = instance_nearest(x, y, par_player)
}

