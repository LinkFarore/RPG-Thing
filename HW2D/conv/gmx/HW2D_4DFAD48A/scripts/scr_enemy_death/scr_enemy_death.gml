effect_create_above(ef_explosion, x, y, 0, make_colour_rgb(159,78,250));

if global.mana <= 50
{global.mana += 3;}

scr_exp_give();
obj_link.killstreak += 1;

if (floor(random(4-1))=0){ //Tests the chance of it happening
instance_create(self.x,self.y,obj_health)
}
else
if (floor(random(4-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_magic)
}
else
if (floor(random(4-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_sp_fragment)
}
else
if (floor(random(4-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_g)
}
else
if (floor(random(5-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_b)
}
else
if (floor(random(8-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_r)}

instance_destroy();
