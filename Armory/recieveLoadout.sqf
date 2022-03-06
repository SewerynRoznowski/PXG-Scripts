_indexFaction = lbCurSel 1500;
_indexLoadout = lbCurSel 1501;

_faction = lbData [1500, _indexFaction];
_loadout = lbData [1501, _indexLoadout];

Switch (_faction) do {
	default { hint "error"; };
	case "dg": {execVM "Scripts\Armory\factions\dg.sqf";};
	case "haf": {execVM "Scripts\Armory\factions\haf.sqf";};
	case "port": {execVM "Scripts\Armory\factions\port.sqf";};
	case "serb": {execVM "Scripts\Armory\factions\serb.sqf";};
	case "tfi": {execVM "Scripts\Armory\factions\tfi.sqf";};
	case "usArmy": {execVM "Scripts\Armory\factions\usArmy.sqf";};
};