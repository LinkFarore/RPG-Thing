function line_of_sight_clear(x1, y1, x2, y2)
{
    var inst1 = instance_position(x1, y1, obj_pylon);
    var inst2 = instance_position(x2, y2, obj_pylon);
    
    // Temporarily disable endpoints for collision check
    if (inst1 != noone) instance_change(inst1, false);
    if (inst2 != noone) instance_change(inst2, false);
    
    var collision = collision_line(x1, y1, x2, y2, obj_pylon, false, true);
    
    // Restore collision
    if (inst1 != noone) instance_change(inst1, true);
    if (inst2 != noone) instance_change(inst2, true);
    
    return (collision == noone);
}