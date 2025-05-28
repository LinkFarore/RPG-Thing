action_set_relative(1);
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


global.mana += 1;

instance_destroy();

action_effect(0, 0, 0, 0, 16404127, 1);
action_set_relative(0);
