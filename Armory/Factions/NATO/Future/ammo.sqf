params["_side","_faction","_variant", "_loadout"]; 

// add primary ammo 
switch (_loadout) do {
	default {
		for "_i" from 1 to 4 do { player addItemToVest "30Rnd_65x39_caseless_mag"};
		for "_i" from 1 to 4 do { player addItemToVest "30Rnd_65x39_caseless_mag_Tracer"};
	};
	case "sqd_ar": {
		for "_i" from 1 to 2 do { player addItemToVest "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch"};
	};
	case "sqd_dmr";
	case "rcn_dmr": {
		for "_i" from 1 to 4 do { player addItemToVest "rhsusf_20Rnd_762x51_m993_Mag"};
		for "_i" from 1 to 4 do { player addItemToBackpack "rhsusf_20Rnd_762x51_m62_Mag"};
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 2 do { player addItemToVest "rhsusf_100Rnd_762x51_m61_ap"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m80a1epr"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer"};
	};
	case "rcn_drone": {
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag"};
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"};
		for "_i" from 1 to 2 do { player addItemToVest "ACE_UAVBattery"};
	};
	case "ar_c";
	case "pil": {
		for "_i" from 1 to 4 do { player addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag"};
	};
};

// add secondary ammo
//switch (_loadout) do {
//	default {};
//};

// add assistant ammo 
switch (_loadout) do {
	default {};
	case "sqd_aar": {
		for "_i" from 1 to 4 do { player addItemToBackpack "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch"};
	};
	case "sup_mmg_l": {
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m61_ap"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m80a1epr"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer"};
	};
	case "sup_mat_l": {
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_smaw_HEDP"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_smaw_HEAA"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_smaw_SR"};
	};
};

// add other ammo 
switch (_loadout) do {
	default {};
	case "sup_mat_g": {
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_smaw_HEAA"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_smaw_SR"};
	};
};

// add grenades
switch (_loadout) do {
	default {
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_an_m8hc"};
		for "_i" from 1 to 2 do { player addItemToVest "SmokeShellGreen"};
		for "_i" from 1 to 2 do { player addItemToVest "SmokeShellRed"};
		for "_i" from 1 to 2 do { player addItemToVest "HandGrenade"};
	};
};

// add 40mm grenades
switch (_loadout) do {
	default {};
	case "plt": {
		for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_HE_Grenade_shell"}; 
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "UGL_FlareWhite_F"};
	};
	case "sqd_ld";
	case "sqd_gre";
	case "rcn_ld": {
		for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_HE_Grenade_shell"};
		for "_i" from 1 to 4 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell"};
		for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell"};
		for "_i" from 1 to 4 do {player addItemToBackpack "UGL_FlareWhite_F"};
	};
};