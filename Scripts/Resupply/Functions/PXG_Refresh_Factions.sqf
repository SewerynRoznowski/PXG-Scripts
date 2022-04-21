_selectedSide = str lbCurSel 451504;

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

lbClear 451501;
lbClear 451502;
lbClear 451503;
{
	lbAdd [451502, _x];
}	forEach _factionsArray;