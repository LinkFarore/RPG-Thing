//Note: weaknessArray is an array of the elements the monster is weak to, like ["fire", "ice"].

function GenerateWeaknesses(weaknessArray) 
{ 
    var result = ds_map_create();

    //First, we initialize all weaknesses at false for every existing element: 
    for(var i =0; i < array_length(obj_elements.elementsArray); i++) 
    { 
        ds_map_add(result, obj_elements.elementsArray[i], false); 
    }

    //Then, we go through the weakness array and change the value of the result map's key/value pair to "true" for each element contained in the weakness array: 
    for(var i = 0; i < array_length(weaknessArray); i++) 
    { 
        if(result[? weaknessArray[i]] != undefined) 
        { 
            result[? weaknessArray[i]] = true; 
        } 
    }

    //Finally, return the result: 
    return result; 
}