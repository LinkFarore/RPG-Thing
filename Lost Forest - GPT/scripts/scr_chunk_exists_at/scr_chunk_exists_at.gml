// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_chunk_exists_at(){
// Script: chunk_exists_at
// Arguments: _chunk_x, _chunk_y

var _chunk_x = argument0;
var _chunk_y = argument1;
var _chunk_key = string(_chunk_x) + "," + string(_chunk_y);

// Check if the chunk exists in the active_chunks map of obj_chunk_manager
return ds_map_exists(obj_chunk_manager.active_chunks, _chunk_key);

}