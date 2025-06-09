//Draw the debug
if debug
{
	draw_text(8,13,string_hash_to_newline("FPS: " + string(fps)));//Shows the FPS
    draw_text(8,29,string_hash_to_newline("SIZE: " + string(player_size)));
    draw_text(8,45,string_hash_to_newline("Food Spawn: " + string(instance_number(obj_food))));
    draw_text(8,77,string_hash_to_newline("X " + string(x)));//Shows the x coordinate
    draw_text(8,93,string_hash_to_newline("Y " + string(y)));//Shows the y coordinate
    draw_text(8,109,string_hash_to_newline("Camera Width " + string(camera_get_view_width(obj_camera.cam))));
    draw_text(8,125,string_hash_to_newline("Camera Height " + string(camera_get_view_height(obj_camera.cam))));
    draw_text(8,139,string_hash_to_newline("Objects: " + string(instance_count)));//Shows current amount of instances active
    //draw_text(8,155,string_hash_to_newline("Seed: " + string(seed)));//Shows the seed
	//draw_text(8,191,string_hash_to_newline("Loaded: " + string(load)));//Shows if the file was loaded
}