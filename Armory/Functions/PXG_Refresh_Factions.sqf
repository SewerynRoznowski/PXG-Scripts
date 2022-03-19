_selectedSide = str lbCurSel 1500;

_factionsScriptPath = "Scripts\Armory\Factions\PXG_Available_Factions_";
_side = "Blue.sqf";

switch (_selectedSide) do {
	case "0": {_side = "Blue.sqf"};
	case "1": {_side = "Red.sqf"};
	case "2": {_side = "Indep.sqf"};
	default { };
};

_factionsScriptPath = _factionsScriptPath + _side;

_factionsArray = call compile preprocessfile _factionsScriptPath;

lbClear 1501;

{
	lbAdd [1501, _x];
}	forEach _factionsArray;