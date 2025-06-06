if (instance_exists(target)) {
    // --- Mouse offset logic ---
    var mx = mouse_x;
    var my = mouse_y;

    var dist = point_distance(target.x, target.y, mx, my);
    var dir = point_direction(target.x, target.y, mx, my);
    var offset = min(mouse_influence_dist, dist);

    var xTo = target.x + lengthdir_x(offset, dir);
    var yTo = target.y + lengthdir_y(offset, dir);

    x += (xTo - x) / smoothing;
    y += (yTo - y) / smoothing;

    // --- Dynamic Zoom Based on Player Size ---
    var size = target.player_size;

    // Tune these values for visual clarity
    var size_min = 16;     // Starting player_size
    var size_max = 2560;    // Cap at big size
    var zoom_min = 0.7;    // Closest zoom
    var zoom_max = 16;    // Furthest zoom

    // Zoom scaling curve
    var zoom_target = lerp(zoom_min, zoom_max, clamp((size - size_min) / (size_max - size_min), 0, 1));
    view_zoom = lerp(view_zoom, zoom_target, 0.1); // Smooth interpolation

    // Resize camera
    var new_w = base_view_width * view_zoom;
    var new_h = base_view_height * view_zoom;
    camera_set_view_size(cam, new_w, new_h);

    // Center camera
    camera_set_view_pos(cam, x - new_w / 2, y - new_h / 2);
}
