if sprite_index = spr_explode
{
instance_destroy();
global.mana += 10;
instance_create(x,y,obj_fairy);
}

