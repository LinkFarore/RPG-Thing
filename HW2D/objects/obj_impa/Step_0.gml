/// @description Health and Death 
if hp <= 0
{
effect_create_above(ef_explosion, x, y, 0, make_colour_rgb(159,78,250));
instance_destroy();
}

///Sprite Transformation Code

if hspeed < 0 && vspeed = 0
{sprite_index = sprite_l;}

if hspeed > 0 && vspeed = 0
{sprite_index = sprite_r;}

if hspeed = 0 && vspeed < 0
{sprite_index = sprite_u;}

if hspeed = 0 && vspeed > 0
{sprite_index = sprite_d;}

var __b__;
__b__ = action_if_aligned(16, 16);
if __b__
{
switch(state)
{
    case enemy_state.wander: scr_enemy_wander(); break;
    case enemy_state.attack: scr_enemy_attack(); break;
}

if !instance_exists(target) || state = enemy_state.wander
{
    if alarm[0] = -1
    {
        alarm[0] = 60;
    }
}

if distance_to_object(target) <= 300
{
state = enemy_state.attack;
}

}
