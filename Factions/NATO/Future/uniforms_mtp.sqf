params["_side","_faction","_variant", "_loadout"]; 

// add uniform
switch (_loadout) do {
	default { player forceAddUniform "U_B_CombatUniform_mcam"};
	case "pil": { player forceAddUniform "U_B_HeliPilotCoveralls"};
	case "ar_c": { player forceAddUniform "rhs_uniform_g3_mc"};
};
	
// add helmet
switch (_loadout) do {
	default { player addHeadgear "H_HelmetB"};
	case "ar_c": {player addHeadgear "rhsusf_cvc_ess"};
	case "pil": {player addHeadgear "rhsusf_hgu56p_visor_green"};
};

// add vest
switch (_loadout) do {
	default { player addVest "V_PlateCarrier2_rgr"};
	case "pil": { player addVest "V_BandollierB_rgr"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "B_Kitbag_mcamo"};
	case "sqd_med";
	case "sup_mat_l": {player addBackpack "B_Carryall_mcamo"};
	case "sup_mor_l": {player addBackpack "B_Mortar_01_support_F"};
	case "sup_mor_g": {player addBackpack "B_Mortar_01_weapon_F"};
	case "rcn_drone": {player addBackpack "B_UAV_01_backpack_F"};
	case "ar_c";
	case "pil": {};
};