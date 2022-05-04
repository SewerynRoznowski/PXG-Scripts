_selectedSide = str lbCurSel 1500;

_factionsScriptPath = "Scripts\Factions\PXG_Available_Factions_";
_side = "Blue.sqf";

switch (_selectedSide) do {
	case "0": {_side = "Blue.sqf"};
	case "1": {_side = "Opfor.sqf"};
	case "2": {_side = "Indep.sqf"};
	default { };
};

_factionsScriptPath = _factionsScriptPath + _side;
_factionsArray = call compile preprocessfile _factionsScriptPath;

tvClear 1501;
tvClear 1503;

{
	tvAdd [1501,[], _x];
	_variantScriptPath = "Scripts\Factions\";
	_variantScriptPath = _variantScriptPath + _x + "\variantlist.sqf";
	_variantArray = call compile preprocessfile _variantScriptPath;
	_factionPlaceInTree = _factionsArray find _x;
	{
		tvAdd [1501,[_factionPlaceInTree],_x];
		
	} forEach _variantArray;


}	forEach _factionsArray;


