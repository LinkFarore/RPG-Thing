with (other) {
if (place_meeting(x,y,obj_keep_enemy))
{
    if (floor(random(6-1))=0)
    { //Tests the chance of it happening
        instance_create(self.x,self.y,obj_moblin2)
    }
}

if (place_meeting(x,y,obj_keep_allied))
{
    if (floor(random(12-1))=0)
    { //Tests the chance of it happening
        instance_create(self.x,self.y,obj_warrior)
    }
}

}
