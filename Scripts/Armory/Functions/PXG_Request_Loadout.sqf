_indexSide = lbCurSel 1500;
_indexFaction = tvCurSel 1501;
_indexLoadout = tvCurSel 1503;

if (_indexSide == -1) exitWith { hint "Please select side."};
if (count _indexFaction == 0 ) exitWith { hint "Please select faction."};
if (count _indexFaction == 1 ) exitWith { hint "Please select faction variant."};
if (count _indexLoadout < 2 ) exitWith { hint "Please select loadout."};

_side = str _indexSide;
_variant = tvText [1501, _indexFaction];
_indexFaction deleteAt 1; 
_faction = tvText [1501, _indexFaction];
_loadout = tvData [1503, _indexLoadout];

[_side, _faction,_variant, _loadout] call compile preprocessfile "scripts\Armory\Functions\PXG_Recieve_Loadout.sqf";

player setVariable ["PXG_Player_side", _side];
player setVariable ["PXG_Player_faction", _faction];
player setVariable ["PXG_Player_variant", _variant];
player setVariable ["PXG_player_loadout", _loadout];

closeDialog 2;