function spellbar_search(rootObject,itemType)
{
	for	(var i = 0; i < 5; i += 1;)
	{
		if (rootObject.spell_bar_temp[i] == itemType)
		{
			return(i);	
		}
	}
	return(-1);
}

function spellbar_remove(rootObject,itemType)
{
	var _slot = spellbar_search(rootObject,itemType);
	if (_slot != -1)
	{
		with (rootObject) spell_bar_temp[_slot] = -1;
		return true;
	}
	else return false;
}

function spellbar_add(rootObject,itemType)
{
	var _slot = spellbar_search(rootObject,-1);
	if (_slot != -1)
	{
		with (rootObject) spell_bar_temp[_slot] = itemType;
		return true;
	}
	else return false;
}