params["_side","_faction","_variant", "_loadout"]; 

// add UAV terminal
switch (_loadout) do {
	default {};
	case "rcn_drone": {player linkItem "B_UavTerminal"};
};

// Javelin gunner
switch (_loadout) do {
	case "sup_hat_g": {player addWeapon "UK3CB_BAF_Javelin_CLU"};
};