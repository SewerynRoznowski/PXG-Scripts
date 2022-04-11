
_indexFaction = lbCurSel 461502;
_indexVariant = lbCurSel 461503;
_faction = lbText [461502, _indexFaction];
_variant = lbText [461503, _indexVariant];

_variantArray = _variant splitString " ";
_variantEra = _variantArray #1;



_vehiclesScriptPath = "Scripts\Factions\";
_vehiclesScriptPath = _vehiclesScriptPath + _faction + "\" + _variantEra +"\vehicles.sqf";

_vehiclesArray = call compile preprocessfile _vehiclesScriptPath;

lbClear 461501;
{
	_vehicleName = getText (configFile >> "CfgVehicles" >> _x >> "DisplayName");
	lbAdd [461501, _vehicleName];
}	forEach _vehiclesArray;

{
	lbSetData [461501, _forEachIndex, _x];
} forEach _vehiclesArray;