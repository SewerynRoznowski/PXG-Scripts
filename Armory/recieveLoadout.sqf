_indexFaction = lbCurSel 1500;
_indexLoadout = lbCurSel 1501;

_faction = lbData [1500, _indexFaction];
_loadout = lbData [1501, _indexLoadout];

Switch (_faction) do {
	default { hint "error"; };
	case "haf": {execVM "Scripts\Armory\factions\haf.sqf";};
	case "usArmy": {execVM "Scripts\Armory\factions\usArmy.sqf";};
	case "port": {execVM "Scripts\Armory\factions\port.sqf";};
};