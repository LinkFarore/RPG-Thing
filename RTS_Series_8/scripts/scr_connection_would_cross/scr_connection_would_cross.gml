function connection_would_cross(check_index)
{
    // Only need to check against previously drawn connections
    for (var i = 0; i < check_index; i++)
    {
        var p1 = ds_list_find_value(nearest_pylons, check_index);
        var p2 = ds_list_find_value(nearest_pylons, i);
        
        // Get all four points for line intersection test
        var x1 = current_x, y1 = current_y;
        var x2 = p1.x, y2 = p1.y;
        var x3 = current_x, y3 = current_y;
        var x4 = p2.x, y4 = p2.y;
        
        // Basic line intersection test
        var denom = (y4-y3)*(x2-x1) - (x4-x3)*(y2-y1);
        if (denom == 0) continue; // Parallel lines
        
        var ua = ((x4-x3)*(y1-y3) - (y4-y3)*(x1-x3)) / denom;
        var ub = ((x2-x1)*(y1-y3) - (y2-y1)*(x1-x3)) / denom;
        
        if (ua >= 0 && ua <= 1 && ub >= 0 && ub <= 1)
        {
            return true; // Lines cross
        }
    }
    return false; // No crossings found
}