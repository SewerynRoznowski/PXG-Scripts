
//------------------------------------------------ Handle parameters

for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};

//-------------------------------------------------- Server scripts
adminCurators = allCurators;
_null = [] execVM "scripts\misc\zeusupdater.sqf";														// zeus unit updater loop
_ReinforcePint = execVM "scripts\misc\PXG_Reinforce_Ping.sqf";

["Initialize"] call BIS_fnc_dynamicGroups; // Initializes the Dynamic Groups framework
