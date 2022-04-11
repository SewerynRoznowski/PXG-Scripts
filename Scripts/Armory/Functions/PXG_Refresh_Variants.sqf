_indexFaction = lbCurSel 1501;
_faction = lbText [1501, _indexFaction];

_variantScriptPath = "Scripts\Factions\";
_variantScriptPath = _variantScriptPath + _faction + "\variantlist.sqf";

_variants = call compile preprocessfile _variantScriptPath;

lbClear 1502;
{
	lbAdd [1502, _x];
}	forEach _variants;