params["_side","_faction","_variant", "_loadout"]; 

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "UK3CB_BAF_L85A3_Grippod";
			  player addPrimaryWeaponItem "optic_Arco_blk_F";
			  player addPrimaryWeaponItem "UK3CB_underbarrel_acc_grippod"
	};
	case "plt";
	case "sqd_ld";
	case "rcn_ld";
	case "sqd_gre":{ player addWeapon "UK3CB_BAF_L85A3_UGL";
					 player addPrimaryWeaponItem "optic_Arco_blk_F"
	};
	case "sqd_ar": {player addWeapon "hlc_lmg_minimi_railed";
					player addPrimaryWeaponItem "optic_Arco_blk_F"
	};
	case "rcn_dmr": {player addWeapon "UK3CB_BAF_L129A1";
					 player addPrimaryWeaponItem "rhsusf_acc_acog_mdo"
	};
	case "sup_mmg_g": {	player addWeapon "UK3CB_BAF_L7A2"};
	case "pil";
	case "ar_c": {player addWeapon "UK3CB_BAF_L22A2";
				  player addPrimaryWeaponItem "optic_Arco_blk_F";
			  	  player addPrimaryWeaponItem "UK3CB_underbarrel_acc_grippod"
	};
};

// add secondary weapon
switch (_loadout) do {
	default { player addWeapon "UK3CB_BAF_L131A1"};
};

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_M136"};
	case "sup_hat_g": {	player addWeapon "UK3CB_BAF_Javelin_Slung_Tube"};
};