params["_side","_faction","_variant", "_loadout"]; 

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "UK3CB_M16A1"};
	case "sqd_gre":{ player addWeapon "rhs_weap_m4a1_carryhandle_m203"};
	case "sqd_ar": {player addWeapon "UK3CB_M1UK3CB_M606A1_LSW"};
	case "rcn_dmr": {player addWeapon "rhs_weap_m14ebrri";
					 player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR"};
	case "sup_mmg_g": {	player addWeapon "UK3CB_M60"};
};

// add secondary weapon
switch (_loadout) do {
	default {};
	case "rcn_ld";
	case "sqd_ld";
	case "sqd_gre":{ player addWeapon "rhsusf_weap_m1911a1"};
	case "sup_mmg_g": {	player addWeapon "UK3CB_M60"};
};
// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_m72a7"};
};