params["_side","_faction","_variant", "_loadout"]; 

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "rhs_weap_m4a1_blockII_d";
			  player addPrimaryWeaponItem "UK3CB_BAF_TA31F";
			  player addPrimaryWeaponItem "rhsusf_acc_kac_grip"
	};
	case "plt";
	case "sqd_ld";
	case "rcn_ld";
	case "sqd_gre":{ player addWeapon "rhs_weap_mk18_m320";
					 player addPrimaryWeaponItem "ACE_muzzle_mzls_L";
					 player addPrimaryWeaponItem "rhsusf_acc_g33_T1";
	};
	case "sqd_ar": {player addWeapon "hlc_lmg_mk46mod1";
					player addPrimaryWeaponItem "ACE_muzzle_mzls_L";
					player addPrimaryWeaponItem "BWA3_optic_EOTech552_tan";
					player addPrimaryWeaponItem "hlc_grip_SAW_Grip1"
	};
	case "rcn_dmr": {player addWeapon "rhs_weap_sr25_ec";
					 player addPrimaryWeaponItem "hlc_muzzle_Gunfighter_comp";
					 player addPrimaryWeaponItem "optic_KHS_blk";
					 player addPrimaryWeaponItem "bipod_01_F_blk"
	};
	case "sup_mmg_g": {player addWeapon "MMG_02_black_F";
					   player addPrimaryWeaponItem "ACE_muzzle_mzls_338";
					   player addPrimaryWeaponItem "RKSL_optic_EOT552X";
					   player addPrimaryWeaponItem "bipod_01_F_blk"
	};
	case "sqd_hgre": {player addWeapon "rhs_weap_m32"};
};

// add secondary weapon
switch (_loadout) do {
	case "sqd_hgre": {player addWeapon "hgun_Pistol_heavy_01_green_F";
					  player addPrimaryWeaponItem "optic_MRD_black"};
	default { };
};

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_M136"};
	case "sup_hat_g": {	player addWeapon "launch_I_Titan_short_F"};
};