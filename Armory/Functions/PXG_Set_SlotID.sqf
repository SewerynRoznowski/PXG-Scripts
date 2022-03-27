_slotStr = str player;
_slotId = _slotStr splitString "_";
_slotSide = _slotId #0;
_slotGroup = _slotId #1;
_slotRole = _slotId #2;

player setVariable ["PXG_Slot_Side", _slotSide];
player setVariable ["PXG_Slot_Group", _slotGroup];
player setVariable ["PXG_Slot_Role", _slotRole];