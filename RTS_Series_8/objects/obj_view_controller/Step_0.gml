// Move the view based on keyboard input
scr_move_view();

// Adjust zoom level based on mouse wheel input
zoom_level = clamp(zoom_level + ((mouse_wheel_down() - mouse_wheel_up()) * 0.1), 0.5, 2);

// Get the current view size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

// Calculate the target zoomed size
var target_w = zoom_level * default_zoom_width;
var target_h = zoom_level * default_zoom_height;

// Calculate the world position of the mouse before the zoom
var mouse_world_x = camera_get_view_x(view_camera[0]) + (mouse_x / view_w) * view_w;
var mouse_world_y = camera_get_view_y(view_camera[0]) + (mouse_y / view_h) * view_h;

// Interpolate the new sizes
var new_w = lerp(view_w, target_w, 1);
var new_h = lerp(view_h, target_h, 1);

// Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

// Adjust the camera position to keep the mouse world position consistent
var new_camera_x = mouse_world_x - (mouse_x / new_w) * new_w;
var new_camera_y = mouse_world_y - (mouse_y / new_h) * new_h;

// Interpolate the camera position
var final_camera_x = lerp(camera_get_view_x(view_camera[0]), new_camera_x, 1);
var final_camera_y = lerp(camera_get_view_y(view_camera[0]), new_camera_y, 1);

camera_set_view_pos(view_camera[0], final_camera_x, final_camera_y);