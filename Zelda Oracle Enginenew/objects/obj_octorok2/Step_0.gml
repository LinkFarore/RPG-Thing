/// @description Health and Death 
if hp <= 0
{
if (floor(random(4-1))=0){ //Tests the chance of it happening
instance_create(self.x,self.y,obj_health)
}
else
if (floor(random(5-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_magic)
}
else
if (floor(random(3-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_g)
}
else
if (floor(random(6-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_b)
}
else
if (floor(random(12-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_r)
}
if (floor(random(5-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_arrow_pickup)
}
if (floor(random(8-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_bomb_pickup)
}


global.mana += 3;

effect_create_above(ef_explosion, x, y, 0, make_colour_rgb(159,78,250));

instance_destroy();
}

if hp2 <= 0
{
scr_enemy_death();
}

///Sprite Transformation Code

if hspeed < 0 && vspeed = 0
{
sprite_index = spr_octorok2_l
}

if hspeed > 0 && vspeed = 0
{
sprite_index = spr_octorok2_r
}

if hspeed = 0 && vspeed < 0
{
sprite_index = spr_octorok2_u
}

if hspeed = 0 && vspeed > 0
{
sprite_index = spr_octorok2_d
}

///Projectile Firing code

if hspeed < 0 && vspeed = 0
{
    if distance_to_object(obj_player) < 64
    {
        if alarm[0] = -1
        {
            alarm[0] = 1.2*room_speed;
        }
    }
}

if hspeed > 0 && vspeed = 0
{
    if distance_to_object(obj_player) < 64
    {
        if alarm[0] = -1
        {
            alarm[0] = 1.2*room_speed;
        }
    }
}

if hspeed = 0 && vspeed < 0
{
    if distance_to_object(obj_player) < 64
    {
        if alarm[0] = -1
        {
            alarm[0] = 1.2*room_speed;
        }
    }
}

if hspeed = 0 && vspeed > 0
{
    if distance_to_object(obj_player) < 64
    {
        if alarm[0] = -1
        {
            alarm[0] = 1.2*room_speed;
        }
    }
}

var __b__;
__b__ = action_if_aligned(16, 16);
if __b__
{
{
    if (hspeed == 0)
    {
        if (random(3)<1 && place_free(x-1.2,y,))
        { hspeed = -1.2; vspeed = 0;}
        if (random(3)<1 && place_free(x+1.2,y,))
        { hspeed = 1.2; vspeed = 0;}
    }
    else
    {
        if (random(3)<1 && place_free(x,y-1.2,))
        { hspeed = 0; vspeed = -1.2;}
        if (random(3)<1 && place_free(x,y+1.2,))
        { hspeed = 0; vspeed = 1.2;}
    }
}

}
