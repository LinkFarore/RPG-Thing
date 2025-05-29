action_inherited();
value = min(irandom_range(1,10), irandom_range(1,10), irandom_range(1,10))*player_luck_point;

if value < 5
{
    sprite_index = spr_coin;
    image_speed = .3;
}

if value >= 5 and value <= 9
{
    sprite_index = spr_coin2;
    image_speed = .3;
}

if value >= 10
{
    sprite_index = spr_coin3;
    image_speed = .3;
}

var start_sp = 4;
var start_dir = irandom_range(30,150);

dx = lengthdir_x(start_sp,start_dir);
dy = lengthdir_y(start_sp,start_dir);
grav = .25;
bounce_factor = .25;
fr = .9;