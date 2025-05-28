function inventory_search(rootObject,itemType)
{
	for	(var i = 0; i < INVENTORY_SLOTS; i += 1;)
	{
		if (rootObject.inventory[i] == itemType)
		{
			return(i);	
		}
	}
	return(-1);
}

function inventory_remove(rootObject,itemType)
{
	var _slot = inventory_search(rootObject,itemType);
	if (_slot != -1)
	{
		with (rootObject) inventory[_slot] = -1;
		return true;
	}
	else return false;
}

function inventory_add(rootObject,itemType)
{
	var _slot = inventory_search(rootObject,-1);
	if (_slot != -1)
	{
		with (rootObject) inventory[_slot] = itemType;
		return true;
	}
	else return false;
}

function inventory_swap(objectFrom, slotFrom, objectTo, slotTo) {
    var _itemFrom = objectFrom.inventory[slotFrom];

    // Allow only inventory to spell bar or spell bar overwrites
    if (objectTo == obj_spell_bar) {
        objectTo.spell_bar_temp[slotTo] = _itemFrom;
        objectFrom.inventory[slotFrom] = -1;
    }
}