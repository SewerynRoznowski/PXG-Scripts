params["_loadout"];

// Sets default value for short and long range radio
_srCh = 1;
_lrCh = 1;

// Gets slot I
_slotGroup = player getVariable "PXG_player_group"; 
_slotRole = player getVariable "PXG_player_role";

// Assigns correct channel based on ID 
switch (_slotGroup) do {
	default { };
	case "plt": {_srCh = 3};
	case "sqd1": {_srCh = 1};
	case "sqd2": {_srCh = 2};
	case "sqd3": {_srCh = 3};
	case "sup1": {_srCh = 5};
	case "sup2": {_srCh = 6};
	case "sup3": {_srCh = 7};
	case "sup4": {_srCh = 8};
	case "sup5": {_srCh = 9};
	case "rcn1": {_srCh = 10};
	case "rcn2": {_srCh = 11};
	case "tac": {_srCh = 12; _lrCh = 2};
	case "ar1": {_srCh = 13};
	case "ar2": {_srCh = 14};
	case "ar3": {_srCh = 15};
	case "ar4": {_srCh = 16};
	case "air1";
	case "air2";
	case "air3";
	case "air4";
	case "air5": {_lrCh = 2};
};

waitUntil { ([] call acre_api_fnc_isInitialized) };

/// Check for radio type
_hasRadio343 = [player, "ACRE_PRC343"] call acre_api_fnc_hasKindOfRadio;
_hasRadio152 = [player, "ACRE_PRC152"] call acre_api_fnc_hasKindOfRadio;
_hasRadio117 = [player, "ACRE_PRC117F"] call acre_api_fnc_hasKindOfRadio;

// set radio channel, default channel 1 is correct for most 152s and 117. Hence only swap channel in specific case.
if (_hasradio343) then { [(["ACRE_PRC343"] call acre_api_fnc_getRadioByType), _srCh] call acre_api_fnc_setRadioChannel};
if (_hasradio152 && _slotGroup == "plt") then { [(["ACRE_PRC152"] call acre_api_fnc_getRadioByType), _srCh] call acre_api_fnc_setRadioChannel};
if (_hasradio152 && _loadout == "pil") then { [(["ACRE_PRC152"] call acre_api_fnc_getRadioByType), _lrCh] call acre_api_fnc_setRadioChannel};
if (_hasradio117 && _slotRole == "fac1") then { [(["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), _lrCh] call acre_api_fnc_setRadioChannel};
