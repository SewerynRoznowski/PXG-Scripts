// Reinforce ping script
// Pings PL or Logi when people are close to staging or mobile reinsert 

// Start loop
hint "ping starts";
waitUntil {time > 30};
while {true} do {
	 // Check if PL or Logi is in game.
	if (isNil B_plt_plt) then {_plt = 0;} else {_plt = 1;};
	if (isNil B_plt_logi1) then {_logi1 = 0;} else {_logi1 = 1;};
	if (isNil B_plt_logi2) then {_logi2 = 0;} else {_logi2 = 1;};

	// Check for persons near staging area
	_stagingArray = nearestObjects ["Staging_Area", ["Person"], 50];
	_mobileArray = nearestObjects ["forward_tactical_reinsert_base", ["Person"], 50];

	// initialize counters 
	_stagingCounter = 0; 
	_mobileCounter = 0; 

	// Check for and count players near staging areas. 
	{if (isPlayer _x) then {_stagingCounter = _stagingCounter + 1;} } forEach _stagingArray;
	{if (isPlayer _x) then {_mobileCounter = _mobileCounter + 1;} } forEach _mobileArray;

	if (_stagingCounter > 0 or _mobileCounter > 0 ) then {
		if (_logi1 == 1) then { format [" Players at staging: %1 \n Players at mobile spawn: %2", _stagingCounter, _mobileCounter] remoteExec ["hint", B_plt_logi1]; };
		if (_logi2 == 1) then { format [" Players at staging: %1 \n Players at mobile spawn: %2", _stagingCounter, _mobileCounter] remoteExec ["hint", B_plt_logi2]; };
		if (_plt == 1) then { format [" Players at staging: %1 \n Players at mobile spawn: %2", _stagingCounter, _mobileCounter] remoteExec ["hint", B_plt_plt]; };
	};
	sleep 30;
};
