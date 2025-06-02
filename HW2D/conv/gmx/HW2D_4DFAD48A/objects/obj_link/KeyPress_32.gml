if ani = true
{exit}
if sprite_index = spr_link_death
{exit}
if using = true
{exit}



if direction = 270
{
instance_create(x,y,obj_sword_d);
using = true;
}

if direction = 180
{
instance_create(x,y,obj_sword_l);
using = true;
}

if direction = 90
{
instance_create(x,y,obj_sword_u);
using = true;
}

if direction = 0
{
instance_create(x,y,obj_sword_r);
using = true;
}


