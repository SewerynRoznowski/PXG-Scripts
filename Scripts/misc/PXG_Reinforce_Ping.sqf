// Reinforce ping script
// Pings PL or Logi when people are close to staging or mobile reinsert 

// Start loop
waitUntil {time > 10};
while {true} do {
	 // Check if PL or Logi is in game.
	_plt = if (isNil "B_plt_plt") then {false} else {true};
	_logi1 = if (isNil "B_plt_logi1") then {false} else {true};
	_logi2 = if (isNil "B_plt_logi2") then {false} else {true};

	// Check for persons near staging area
	_stagingArray = nearestObjects [ getPosATL Staging_Area, ["man"], 50];
	_mobileArray = nearestObjects [ getPosATL forward_tactical_reinsert_base, ["man"], 50];

	// initialize counters 
	_stagingCounter = 0; 
	_mobileCounter = 0; 

	// Check for and count players near staging areas. 
	{if (isPlayer _x) then {_stagingCounter = _stagingCounter + 1;} } forEach _stagingArray;
	{if (isPlayer _x) then {_mobileCounter = _mobileCounter + 1;} } forEach _mobileArray;

	if (_stagingCounter > 0 or _mobileCounter > 0 ) then {
		if (_logi1 == true) then { format [" Players at staging: %1 \n Players at mobile spawn: %2", _stagingCounter, _mobileCounter] remoteExec ["hint", B_plt_logi1]; };
		if (_logi2 == true) then { format [" Players at staging: %1 \n Players at mobile spawn: %2", _stagingCounter, _mobileCounter] remoteExec ["hint", B_plt_logi2]; };
		if (_plt == true) then { format [" Players at staging: %1 \n Players at mobile spawn: %2", _stagingCounter, _mobileCounter] remoteExec ["hint", B_plt_plt]; };
	};
	sleep 30;
};
