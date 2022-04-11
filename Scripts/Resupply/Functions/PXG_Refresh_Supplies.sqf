_indexFaction = lbCurSel 451502;
_indexVariant = lbCurSel 451503;
_faction = lbText [451502, _indexFaction];
_variant = lbText [451503, _indexVariant];

_variantArray = _variant splitString " ";
_variantEra = _variantArray #1;

_suppliesScriptPath = "Scripts\Factions\";
_suppliesScriptPath = _suppliesScriptPath + _faction + "\" + _variantEra +"\supplies.sqf";

_suppliesArray = call compile preprocessfile _suppliesScriptPath;

lbClear 451501;
{
    _suppliesText = _suppliesArray select _forEachIndex select 0;
	lbAdd [451501, _suppliesText];
}	forEach _suppliesArray;
