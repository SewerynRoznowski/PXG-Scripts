_slotStr = str player;
_slotId = _slotStr splitString "_";
_slotSide = _slotId #0;
_slotGroup = _slotId #1;
_slotRole = _slotId #2;

player setVariable ["PXG_player_side", _slotSide];
player setVariable ["PXG_player_group", _slotGroup];
player setVariable ["PXG_player_role", _slotRole];