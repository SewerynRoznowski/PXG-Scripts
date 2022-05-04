 _indexFaction = tvCurSel 1501;
 _factionSlotInTree = [_indexFaction select 0];

_faction = tvText [1501, _factionSlotInTree];
_variant = tvText [1501, _indexFaction];

_variantArray = _variant splitString " ";
_variantEra = _variantArray #1;

_loadoutsScriptPath = "Scripts\Factions\";
_loadoutsScriptPath = _loadoutsScriptPath + _faction + "\" + _variantEra +"\loadoutlist.sqf";

_loadoutsArray = call compile preprocessfile _loadoutsScriptPath;
_elementsArray = _loadoutsArray select 0;
_loadoutsText = _loadoutsArray select 0; 
_loadoutsData = _loadoutsArray select 1; 

tvClear 1503;
{
	tvAdd [1503, [], _x];
	_parentElement = _elementsArray find _x; 
	_rolesArray = _loadoutsArray select 1;
	_rolesArray = _rolesArray select _parentElement;    
	_rolesDataArray = _loadoutsArray select 2;
	_rolesDataArray = _rolesDataArray select _parentElement;
	{
		tvAdd [1503, [_parentElement], _x];
	} forEach _rolesArray;
	{
		tvSetData [1503, [_parentElement, _forEachIndex], _x];
	} forEach _rolesDataArray;

}	forEach _elementsArray;
