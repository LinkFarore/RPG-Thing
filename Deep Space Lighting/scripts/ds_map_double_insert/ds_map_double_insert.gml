/// @description ds_map_double_insert(parentMap, mapName, mapID, mapKey)
/// @function ds_map_double_insert
/// @param parentMap
/// @param  mapName
/// @param  mapID
/// @param  mapKey
function ds_map_double_insert(argument0, argument1, argument2, argument3) {
	//Assumes parentMap is already created
	var parentMap = argument0;
	var mapName = argument1;
	var mapID = argument2;
	var mapKey = argument3;


	if(!ds_map_exists(parentMap, mapName)){
	    parentMap[? mapName] = ds_map_create();
	}
	var curMap = ds_map_create();
	ds_map_copy(curMap, parentMap[? mapName]);
	curMap[? mapID] = mapKey;
	ds_map_copy(parentMap[? mapName], curMap);
	ds_map_destroy(curMap);




}
