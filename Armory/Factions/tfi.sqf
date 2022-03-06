_indexFaction = lbCurSel 1500;
_indexLoadout = lbCurSel 1501;

_faction = lbData [1500, _indexFaction];
_loadout = lbData [1501, _indexLoadout];

hint format ["%1 %2", _faction, _loadout];

// removes all items from current loadout
removeAllWeapons player;
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

 // add uniform
switch (_loadout) do {
	default { player forceAddUniform "VSM_AOR1_od_shirt_Camo"};
	case "sqd_gre";
	case "sqd_ar";
	case "sqd_dmr";
	case "rcn_ld";
	case "rcn_dmr": { player forceAddUniform "VSM_AOR1_od_pants_Camo"};
	case "pil": { player forceAddUniform "UK3CB_TKA_I_U_H_Pilot_01_DES"};
	case "ar_c": { player forceAddUniform "UK3CB_TKA_I_U_CrewUniform_01_KHK"};
};
	
// add helmet
switch (_loadout) do {
	default { player addHeadgear "rhs_altyn"};
	case "rcn_ld";
	case "rcn_drone";
	case "rcn_dmr": { player addHeadgear "H_Booniehat_khk_hs"};
	case "ar_c": {player addHeadgear "rhs_tsh4"};
	case "pil": {player addHeadgear "rhs_zsh7a_mike"};
};

// add vest
switch (_loadout) do {
	default { player addVest "VSM_CarrierRig_Operator_OGA_OD"};
	case "sqd_ar";
	case "sup_mmg_g": { player addVest "VSM_CarrierRig_Gunner_OGA_OD"};
	case "sqd_eng": { player addVest "VSM_CarrierRig_Breacher_OGA_OD"};
	case "ar_c";
	case "pil": { player addVest "rhs_vest_commander"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "VSM_OGA_OD_Backpack_Kitbag"};
	case "sqd_med";
	case "sup_mmg_l";
	case "sup_mat_l": {player addBackpack "VSM_OGA_OD_carryall"};
	case "sup_mor_l": {player addBackpack "B_Mortar_01_support_F"};
	case "sup_mor_g": {player addBackpack "B_Mortar_01_weapon_F"};
	case "rcn_drone": {player addBackpack "B_UAV_01_backpack_F"};
	case "ar_c";
	case "pil": {};
};

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "hlc_rifle_ak12";
			  player addPrimaryWeaponItem "optic_Hamr";
	};
	case "plt";
	case "sqd_ld";
	case "rcn_ld";
	case "sqd_gre":{ player addWeapon "hlc_rifle_ak12GL";
					player addPrimaryWeaponItem "optic_Hamr"
	};
	case "sqd_ar": {player addWeapon "hlc_rifle_RPK12";
					player addPrimaryWeaponItem "optic_MRCO";
	};
	case "sqd_eng": {player addWeapon "hlc_rifle_saiga12k";
					player addPrimaryWeaponItem "rhs_acc_ekp1";
	};
	case "sqd_dmr": {player addWeapon "rhs_weap_svdp";
					 player addPrimaryWeaponItem "rhs_acc_pso1m21_svd"
	};	
	case "rcn_dmr": {player addWeapon "rhs_weap_svdp";
					 player addPrimaryWeaponItem "rhs_acc_pso1m21_svd"
	};
	case "sup_mmg_g": {	player addWeapon "rhs_weap_pkp";
						player addPrimaryWeaponItem "rhs_acc_1p29_pkp"
	};
};

// add secondary weapon

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_rpg75"};
	case "sup_mat_g": {	player addWeapon "rhs_weap_rpg7";
						player addSecondaryWeaponItem "rhs_acc_pgo7v3"};
};

// add primary ammo 
switch (_loadout) do {
	default {
		for "_i" from 1 to 4 do { player addItemToVest "hlc_30Rnd_545x39_EP_ak"};
		for "_i" from 1 to 4 do { player addItemToVest "hlc_30Rnd_545x39_t_ak"};
	};
	case "sqd_ar": {
		for "_i" from 1 to 6 do { player addItemToVest "hlc_60Rnd_545x39_t_rpk"};
		for "_i" from 1 to 6 do { player addItemToBackpack "hlc_60Rnd_545x39_t_rpk"};
	};
	case "sqd_eng": {
		for "_i" from 1 to 10 do { player addItemToVest "hlc_10rnd_12g_buck_S12"};
		for "_i" from 1 to 10 do { player addItemToBackpack "hlc_10rnd_12g_slug_S12"};
	};
	case "sqd_dmr";
	case "rcn_dmr": {
		for "_i" from 1 to 8 do { player addItemToVest "rhs_10Rnd_762x54mmR_7N14"};
		for "_i" from 1 to 8 do { player addItemToBackpack "rhs_10Rnd_762x54mmR_7N14"};
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 2 do { player addItemToVest "rhs_100Rnd_762x54mmR_green"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_100Rnd_762x54mmR_green"};
	};
	case "rcn_drone": {
		for "_i" from 1 to 2 do { player addItemToVest "hlc_30Rnd_545x39_EP_ak"};
		for "_i" from 1 to 2 do { player addItemToVest "hlc_30Rnd_545x39_t_ak"};
		for "_i" from 1 to 2 do { player addItemToVest "ACE_UAVBattery"};
	};
	case "ar_c";
	case "pil": {
		for "_i" from 1 to 4 do { player addItemToVest "hlc_30Rnd_545x39_EP_ak"};
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
		for "_i" from 1 to 10 do { player addItemToBackpack "hlc_60Rnd_545x39_t_rpk"};
	};
	case "sup_mmg_l": {
		for "_i" from 1 to 4 do { player addItemToBackpack "rhs_100Rnd_762x54mmR_green"};
	};
	case "sup_mat_l": {
		for "_i" from 1 to 3 do { player addItemToBackpack "rhs_rpg7_PG7V_mag"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_rpg7_OG7V_mag"};
	};
};

// add other ammo 
switch (_loadout) do {
	default {};
	case "sup_mat_g": {
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_rpg7_PG7V_mag"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_rpg7_OG7V_mag"};
	};
};

// add grenades
switch (_loadout) do {
	default {
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_rdg2_white"};
		for "_i" from 1 to 2 do { player addItemToVest "rhssaf_mag_brd_m83_green"};
		for "_i" from 1 to 2 do { player addItemToVest "rhssaf_mag_brd_m83_red"};
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_rgd5"};
	};
};

// add 40mm grenades
switch (_loadout) do {
	default {};
	case "plt": {
		for "_i" from 1 to 5 do {player addItemToBackpack "hlc_VOG25_AK"}; 
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_White"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_Red"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_green"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_orange"};
	};
	case "sqd_ld";
	case "sqd_gre";
	case "rcn_ld": {
		for "_i" from 1 to 10 do {player addItemToBackpack "hlc_VOG25_AK"};
		for "_i" from 1 to 4 do {player addItemToBackpack "hlc_GRD_White"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_Red"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_green"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_orange"};
	};
};

// add radios
switch (_loadout) do {
	default { player addItemToUniform "ACRE_PRC343"};
	case "plt"; 
	case "logi": { 
		player addItemToUniform "ACRE_PRC152"; 
		player addItemToBackpack "ACRE_PRC117F" 
	};
	case "tacp": { 
		player addItemToUniform "ACRE_PRC343"; 
		player addItemToBackpack "ACRE_PRC117F" 
	};
	case "sqd_ld";
	case "rcn_ld";
	case "sup_mmg_l";
	case "sup_mat_l";
	case "sup_mor_l":{
		player addItemToUniform "ACRE_PRC343";
		player addItemToUniform "ACRE_PRC152"
	};
	case "pil": {};
};

// add common gear
switch (_loadout) do {
	default { player linkItem "ItemGPS"};
	case "rcn_drone": { player linkItem "B_UavTerminal"};
};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ACE_NVG_Wide_Green";
player addItemToUniform "ACE_microDAGR"; 
player addItemToUniform "ACE_IR_Strobe_Item"; 
player addItemToUniform "ACE_Flashlight_XL50"; 
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_EarPlugs";
player addItemToVest "ACE_CableTie";
player addItemToVest "ACE_CableTie";
player addItemToBackpack "ACE_EntrenchingTool";

// add specialised gear
switch (_loadout) do {
	default { player addWeapon "ACE_Vector";};
	case "plt";
	case "tacp": {
		player addWeapon "Laserdesignator";
		player addItemToBackpack "Laserbatteries";
		player addItemToBackpack "Laserbatteries";
	};
};

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

// add personal medical items
for "_i" from 1 to 4 do { player addItemToUniform "ACE_fieldDressing"};
for "_i" from 1 to 4 do { player addItemToUniform "ACE_elasticBandage"};
for "_i" from 1 to 4 do { player addItemToUniform "ACE_quikclot"};
for "_i" from 1 to 4 do { player addItemToUniform "ACE_packingBandage"};
for "_i" from 1 to 3 do { player addItemToUniform "ACE_morphine"};
for "_i" from 1 to 3 do { player addItemToUniform "ACE_epinephrine"};
for "_i" from 1 to 2 do { player addItemToUniform "ACE_tourniquet"};
for "_i" from 1 to 2 do { player addItemToBackpack "ACE_bloodIV"};
for "_i" from 1 to 2 do { player addItemToBackpack "ACE_bloodIV_500"};

// add medic medical items
switch (_loadout) do {
	default {};
	case "sqd_med": {
		for "_i" from 1 to 15 do { player addItemToBackpack "ACE_fieldDressing"};
		for "_i" from 1 to 15 do { player addItemToBackpack "ACE_elasticBandage"};
		for "_i" from 1 to 15 do { player addItemToBackpack "ACE_quikclot"};
		for "_i" from 1 to 15 do { player addItemToBackpack "ACE_packingBandage"};				
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_bloodIV"};
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_bloodIV_500"};
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_adenosine"};
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_morphine"};
		for "_i" from 1 to 8 do { player addItemToBackpack "ACE_epinephrine"};
	};
};