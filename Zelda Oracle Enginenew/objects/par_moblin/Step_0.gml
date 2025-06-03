/// @description Health and Death 
if hp2 <= 0
{
effect_create_above(ef_explosion, x, y, 0, make_colour_rgb(159,78,250));
instance_destroy();
}

if hp <= 0
{
scr_enemy_death();
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

if place_snapped(16,16)
{
    switch(state)
    {
        case enemy_state.wander: scr_enemy_wander(); break;
        case enemy_state.attack: scr_enemy_attack(); break;
    }
    
    target = obj_player;
    
    if distance_to_object(target) <= 128
    {
        state = enemy_state.attack;
    }
    else
    {
        state = enemy_state.wander;
    }
}

if state = enemy_state.wander
{
    if alarm[0] = -1
    {
        alarm[0] = 90;
    }
}
else
{
	move_snap(16,16)	
}

