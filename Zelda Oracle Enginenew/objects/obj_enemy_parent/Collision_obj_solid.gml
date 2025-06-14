x = round(x / tile_size) * tile_size;
y = round(y / tile_size) * tile_size;

move_dir = -1;
move_timer = 0;
retry_count++;
if retry_count >= 4 {
    retry_count = 0;
}