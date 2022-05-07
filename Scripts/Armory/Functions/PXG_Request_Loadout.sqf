// Get selected items from GUI 
_indexSide = lbCurSel 1500;
_indexFaction = tvCurSel 1501;
_indexLoadout = tvCurSel 1503;

// Gives hints if user does not select all items from UI, prevents errors
if (_indexSide == -1) exitWith { hint "Please select side."};
if (count _indexFaction == 0 ) exitWith { hint "Please select faction."};
if (count _indexFaction == 1 ) exitWith { hint "Please select faction variant."};
if (count _indexLoadout < 2 ) exitWith { hint "Please select loadout."};

// Gets text and data from UI 
_side = str _indexSide;
_variant = tvText [1501, _indexFaction];
_indexFaction deleteAt 1; 
_faction = tvText [1501, _indexFaction];
_loadout = tvData [1503, _indexLoadout];

// Call script for loadouts 
[_side, _faction,_variant, _loadout] call compile preprocessfile "scripts\Armory\Functions\PXG_Recieve_Loadout.sqf";

// Save player side faction and loadout for respawn 
player setVariable ["PXG_Player_side", _side, true];
player setVariable ["PXG_Player_faction", _faction, true];
player setVariable ["PXG_Player_variant", _variant, true];
player setVariable ["PXG_player_loadout", _loadout, true];

// Closes armory dialog 
closeDialog 2;