if instance_exists(obj_player)
{
    // Draw tiled background
    draw_background_tiled(background9, -obj_player.x/200, -obj_player.y/200); // Adjust as needed
}

// Draw Event of obj_camera
/*shader_set(shd_volumetric_cloud);

var view_x = __view_get(e__VW.XView, 0);
var view_y = __view_get(e__VW.YView, 0);
var view_w = __view_get(e__VW.WView, 0);
var view_h = __view_get(e__VW.HView, 0);

// Pass uniforms
shader_set_uniform_f(shader_get_uniform(shd_volumetric_cloud, "u_time"), current_time * 0.001);
shader_set_uniform_f(shader_get_uniform(shd_volumetric_cloud, "u_view_position"), view_x, view_y);
shader_set_uniform_f(shader_get_uniform(shd_volumetric_cloud, "u_view_size"), view_w, view_h);

// Draw quad aligned with the view
draw_rectangle(view_x, view_y, view_x + view_w, view_y + view_h, false);

shader_reset();