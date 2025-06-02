if (floor(random(3-1))=0){ //Tests the chance of it happening
instance_create(self.x,self.y,obj_octorok)
}
else
if distance_to_object(obj_moblin_c) < 250
{
if (floor(random(8-1))=0){ //Tests the chance of it happening
instance_create(self.x,self.y,obj_warrior)
}
else
if (floor(random(5-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_octorok)
}
else
if (floor(random(12-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_octorok2)
}
}


