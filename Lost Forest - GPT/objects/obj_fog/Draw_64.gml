if (instance_exists(obj_player)) {
    shader_set(fog_shader);
    
    // Get viewport dimensions
    var cam = view_camera[0];
    var view_w = camera_get_view_width(cam);
    var view_h = camera_get_view_height(cam);
    
    // Set shader uniforms
    shader_set_uniform_f(shader_get_uniform(fog_shader, "fog_density"), fog_density);
    shader_set_uniform_f(shader_get_uniform(fog_shader, "fog_color"), color_get_red(fog_color) / 255, color_get_green(fog_color) / 255, color_get_blue(fog_color) / 255);
    shader_set_uniform_f(shader_get_uniform(fog_shader, "cam_pos"), cam_pos[0], cam_pos[1]);
    shader_set_uniform_f(shader_get_uniform(fog_shader, "time"), time);
    shader_set_uniform_f(shader_get_uniform(fog_shader, "cam_angle"), cam_angle);
    shader_set_uniform_f(shader_get_uniform(fog_shader, "view_size"), view_w, view_h);
    
    // Draw fullscreen quad
    draw_rectangle(0, 0, view_w, view_h, false);
    
    shader_reset();
}