_selectedSide = str lbCurSel 461504;

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

lbClear 461502;

{
	lbAdd [461502, _x];
}	forEach _factionsArray;