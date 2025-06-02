if distance_to_object(obj_moblin_c) < 128
{
if distance_to_object(obj_link) < 300
{
if alarm[0] = -1
{
alarm[0] = 8*room_speed;
}
}
}

if instance_exists(obj_moblin_c)
{
if distance_to_object(obj_moblin_c) > 200
{
if distance_to_object(obj_link) > 500
{
if (floor(random(250-1))=0){ //Tests the chance of it happening
instance_create(self.x,self.y,obj_moblin_c)
}
}
}
}

