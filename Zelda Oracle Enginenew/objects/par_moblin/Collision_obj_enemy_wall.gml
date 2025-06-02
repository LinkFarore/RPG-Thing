action_reverse_xdir();
action_reverse_ydir();
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

}
