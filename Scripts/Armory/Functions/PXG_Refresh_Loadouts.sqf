_indexFaction = lbCurSel 1501;
_indexVariant = lbCurSel 1502;
_faction = lbText [1501, _indexFaction];
_variant = lbText [1502, _indexVariant];

_variantArray = _variant splitString " ";
_variantEra = _variantArray #1;

_loadoutsScriptPath = "Scripts\Factions\";
_loadoutsScriptPath = _loadoutsScriptPath + _faction + "\" + _variantEra +"\loadoutlist.sqf";

_loadoutsArray = call compile preprocessfile _loadoutsScriptPath;
_loadoutsText = _loadoutsArray select 0; 
_loadoutsData = _loadoutsArray select 1; 

lbClear 1503;
{
	lbAdd [1503, _x];
}	forEach _loadoutsText;

{
	lbSetData [1503, _forEachIndex, _x];
}	forEach _loadoutsData;