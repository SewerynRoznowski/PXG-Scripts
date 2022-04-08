params["_crate"];
_indexFaction = lbCurSel 451502;
_indexVariant = lbCurSel 451503;
_indexSupplies = lbCurSel 451501;
_faction = lbText [451502, _indexFaction];
_variant = lbText [451503, _indexVariant];

_variantArray = _variant splitString " ";
_variantEra = _variantArray #1;

_suppliesScriptPath = "Scripts\Factions\";
_suppliesScriptPath = _suppliesScriptPath + _faction + "\" + _variantEra +"\supplies.sqf";

_suppliesArray = call compile preprocessfile _suppliesScriptPath;

_suppliesContent = _suppliesArray select _indexSupplies select 1;
_suppliesName = _suppliesArray select _indexSupplies select 0;
{
	_supplyType = _suppliesContent select _forEachIndex select 0;
	_supplyAmount = _suppliesContent select _forEachIndex select 1;
	_crate addItemCargoGlobal [_supplyType,_supplyAmount];
}foreach _suppliesContent;

_crate setVariable ["ace_cargo_customName", _suppliesName, true];