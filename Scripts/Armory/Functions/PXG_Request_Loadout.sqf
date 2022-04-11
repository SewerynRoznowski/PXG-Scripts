_indexSide = lbCurSel 1500;
_indexFaction = lbCurSel 1501;
_indexVariant = lbCurSel 1502;
_indexLoadout = lbCurSel 1503;


_side = str _indexSide;
_faction = lbText [1501, _indexFaction];
_variant = lbText [1502, _indexVariant];
_loadout = lbData [1503, _indexLoadout];

[_side, _faction,_variant, _loadout] call compile preprocessfile "scripts\Armory\Functions\PXG_Recieve_Loadout.sqf";

player setVariable ["PXG_Player_side", _side];
player setVariable ["PXG_Player_faction", _faction];
player setVariable ["PXG_Player_variant", _variant];
player setVariable ["PXG_player_loadout", _loadout];

closeDialog 2;