/// @description scr_find_planet(planetID)
/// @function scr_find_planet
/// @param planetID
function scr_find_planet(argument0) {
	//returns planet object based off it's planetID, returns noone if there is no match/not loaded
	var planet = noone;
	var planet_temp;
	for (i = 0; i < instance_number(obj_planet); i += 1)
	{
	    planet_temp = instance_find(obj_planet,i);
	    if(planet_temp.planetID == argument0){
	        planet = planet_temp;
	        i = instance_number(obj_planet);
	    }
	}
	return planet;



}
