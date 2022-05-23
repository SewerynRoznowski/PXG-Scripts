params["_side","_faction","_variant", "_loadout"]; 

_variantArray = _variant splitString " ";
_variantEra = _variantArray #1;

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player addItemToUniform "ACE_Flashlight_XL50"; 
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_EarPlugs";
player addItemToVest "ACE_CableTie";
player addItemToVest "ACE_CableTie";
player addItemToBackpack "ACE_Fortify";
player addItemToBackpack "ACE_EntrenchingTool";

switch (_loadout) do {
	default {};
	case "logi": {player addItemToBackpack "ToolKit"};
	case "sqd_eng": {
		for "_i" from 1 to 3 do { player addItemToBackpack "DemoCharge_Remote_Mag"};
		player addItemToBackpack "MineDetector";
		player addItemToBackpack "ACE_Clacker";
		player addItemToBackpack "ACE_M26_Clacker";
		player addItemToBackpack "ACE_wirecutter";
		player addItemToBackpack "ACE_DefusalKit";
		player addItemToBackpack "ACE_SpraypaintBlue";
	};
};

// early loadouts
if (_variantEra == "Early") then { player addWeapon "binocular"};

// late loadouts
if (_variantEra == "Late") then {
	
	// add GPS
	switch (_loadout) do {
		default {};
		case "plt";
		case "logi";
		case "tacp";
		case "sqd_ld";
		case "rcn_ld";
		case "sup_mmg_l";
		case "sup_hmg_l";
		case "sup_gmg_l";
		case "sup_mat_l";
		case "sup_hat_l";
		case "sup_mor_l": {player addItemToUniform "ACE_DAGR"};
	};

	// add NVG
	player linkItem "ACE_NVG_Gen4_Black";
	player addItemToUniform "ACE_IR_Strobe_Item"; 

	// add binocular
	switch (_loadout) do {
		default { player addWeapon "binocular"};
		case "sqd_ld";
		case "sqd_aar";
		case "rcn_ld";
		case "rcn_dmr";
		case "sup_mmg_l";
		case "sup_mmg_g";	
		case "sup_mat_l";
		case "sup_mat_g";
		case "sup_hat_l";
		case "sup_hat_g";
		case "sup_mor_l";
		case "sup_mor_g":{ player addWeapon "ACE_Vector"};
		case "plt";
		case "tacp": {
			player addWeapon "Laserdesignator";
			player addItemToBackpack "Laserbatteries";
			player addItemToBackpack "Laserbatteries";
		};
	};
};

// modern loadouts
if (_variantEra == "Modern") then {
	
	// add GPS
	player linkItem "ItemGPS";
	player addItemToUniform "ACE_microDAGR";

	// add NVG
	player linkItem "ACE_NVG_Gen4_Black";
	player addItemToUniform "ACE_IR_Strobe_Item"; 

	// add binocular
	switch (_loadout) do {
		default { player addWeapon "binocular"};
		case "sqd_ld";
		case "sqd_aar";
		case "rcn_ld";
		case "rcn_dmr";
		case "sup_mmg_l";
		case "sup_mmg_g";	
		case "sup_mat_l";
		case "sup_mat_g";
		case "sup_hat_l";
		case "sup_hat_g";
		case "sup_mor_l";
		case "sup_mor_g":{ player addWeapon "ACE_Vector"};
		case "plt";
		case "tacp": {
			player addWeapon "Laserdesignator";
			player addItemToBackpack "Laserbatteries";
			player addItemToBackpack "Laserbatteries";
		};
	};
}; 

// Future loadouts
if (_variantEra == "Future") then {
	
	// add GPS
	player linkItem "ItemGPS";
	player addItemToUniform "ACE_microDAGR";

	// add NVG
	player linkItem "ACE_NVG_Gen4_Black";
	player addItemToUniform "ACE_IR_Strobe_Item"; 

	// add binocular
	switch (_loadout) do {
		default { player addWeapon "binocular"};
		case "sqd_ld";
		case "sqd_aar";
		case "rcn_ld";
		case "rcn_dmr";
		case "sup_mmg_l";
		case "sup_mmg_g";	
		case "sup_mat_l";
		case "sup_mat_g";
		case "sup_hat_l";
		case "sup_hat_g";
		case "sup_mor_l";
		case "sup_mor_g":{ player addWeapon "ACE_Vector"};
		case "plt";
		case "tacp": {
			player addWeapon "Laserdesignator";
			player addItemToBackpack "Laserbatteries";
			player addItemToBackpack "Laserbatteries";
		};
	};
};