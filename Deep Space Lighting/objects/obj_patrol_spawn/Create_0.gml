patrol_amount = irandom_range(2,3);
spawn_distance = 256;

patrol_x = x+irandom_range(5000,12000)*choose(-1,1);
patrol_y = y+irandom_range(5000,12000)*choose(-1,1);

patrol_x2 = x+irandom_range(5000,12000)*choose(-1,1);
patrol_y2 = y+irandom_range(5000,12000)*choose(-1,1);

patrol_x3 = x+irandom_range(5000,12000)*choose(-1,1);
patrol_y3 = y+irandom_range(5000,12000)*choose(-1,1);

patrol_x4 = x+irandom_range(5000,12000)*choose(-1,1);
patrol_y4 = y+irandom_range(5000,12000)*choose(-1,1);

patrol_x5 = x+irandom_range(5000,12000)*choose(-1,1);
patrol_y5 = y+irandom_range(5000,12000)*choose(-1,1);

var pat_fuel = instance_create(x,y,obj_fuel_ship);
pat_fuel.patrol = true;
pat_fuel.patrol_x = patrol_x;
pat_fuel.patrol_y = patrol_y;

for (var i=0; i<patrol_amount; i++) 
{
    var pat = instance_create(x+lengthdir_x(spawn_distance,(360/patrol_amount)*i),y+lengthdir_y(spawn_distance,(360/patrol_amount)*i), obj_ally);
}


instance_destroy();