if sprite_index = spr_explode_big
{
instance_create(x,y,obj_heart_container);
global.mana += 35;
instance_destroy();
}

