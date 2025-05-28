var i;
for (i = 0; i < asteroid_spawn; i += 1)
{
    do
    {
    var xx,yy;
    xx=random(room_width); //Set random x
    yy=random(room_height); //Set random y
    }
	//Why is this here? This code will only check is xx,yy has no solid objects, and check if the x and y of the obj_spawn are outside of the distance checks, needs work
    until (place_free(xx+-90,yy+-90) && distance_to_object(obj_player) > 60 && distance_to_object(obj_station) > 90 && distance_to_object(obj_asteroid) > 90);
    instance_create(random(room_width),random(room_height),obj_asteroid);
}