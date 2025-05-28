function scr_patrol_spawn(cx, cy){
	
	var chunk_x = cx * chunk_size;
    var chunk_y = cy * chunk_size;
    var chunk_center_x = chunk_x + chunk_size / 2;
    var chunk_center_y = chunk_y + chunk_size / 2;
	
	var enemy = 1;

	var spawnDistance = floor((abs(argument0)+abs(argument1))/2);
	repeat(enemy)
	{
	    var randomEnemyObject = obj_patrol_spawn;
	    
	    if(randomEnemyObject != noone)
		{
	        with (instance_create(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size),randomEnemyObject))
	        {
	            whileTick = 0;
	            while(!place_empty(x,y))
	            {
	                x=chunk_x + irandom(chunk_size);
	                y=chunk_y + irandom(chunk_size);
	                whileTick += 1;
	                if(whileTick > 10){break;}
	            }
	        }
	    }
	}
}