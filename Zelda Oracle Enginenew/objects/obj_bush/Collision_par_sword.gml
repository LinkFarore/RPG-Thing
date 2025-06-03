if cut = false{
image_speed = .45;
cut = true;
solid = false;


if (floor(random(2-1))=0){ //Tests the chance of it happening
instance_create(self.x,self.y,obj_health)
}
else
if (floor(random(2-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_g)
}
else
if (floor(random(3-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_magic)
}
else
if (floor(random(4-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_b)
}
else
if (floor(random(8-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_r)
}
}

