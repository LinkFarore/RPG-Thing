/// @description  Initialize the ship
scr_ship_init(15,irandom(3),2.25,30,1,1,360,180);
shield_mask = sprite_index;
shield = false;
alarm[4] = room_speed*3;
hit = false;
crit = false;
stun = false;
cloak = false;
direction = irandom(360);
dir = direction;
patrol = true;

object_follow = instance_nearest(x,y,obj_fuel_ship);


if (instance_exists(obj_enemy_ship)) {
    foe = instance_nearest(x, y, obj_enemy_ship)
}