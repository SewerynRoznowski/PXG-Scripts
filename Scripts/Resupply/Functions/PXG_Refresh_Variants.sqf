_indexFaction = lbCurSel 451502;
_faction = lbText [451502, _indexFaction];

_variantScriptPath = "Scripts\Factions\";
_variantScriptPath = _variantScriptPath + _faction + "\variantlist.sqf";

_variants = call compile preprocessfile _variantScriptPath;

lbClear 451503;
{
	lbAdd [451503, _x];
}	forEach _variants;