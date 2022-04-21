_indexFaction = lbCurSel 461502;
_faction = lbText [461502, _indexFaction];

_variantScriptPath = "Scripts\Factions\";
_variantScriptPath = _variantScriptPath + _faction + "\variantlist.sqf";

_variants = call compile preprocessfile _variantScriptPath;

lbClear 461501;
lbClear 461503;
{
	lbAdd [461503, _x];
}	forEach _variants;