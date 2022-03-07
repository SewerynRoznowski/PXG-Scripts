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

// Set traits 
switch (_loadout) do {
	default {
		player setVariable ["ace_medical_medicclass",0];
		player setVariable ["ACE_IsEngineer",0]
		};
	case "sqd_med": { 
		player setVariable ["ace_medical_medicclass",1];
		player setVariable ["ACE_IsEngineer",0]
		};
	case "logi": { 
		player setVariable ["ACE_IsEngineer",2];
		player setVariable ["ace_medical_medicclass",0]
		};
};

 // add uniform
switch (_loadout) do {
	default { player forceAddUniform "VSM_Scorpion_Crye_Camo"};
};
	
// add helmet
switch (_loadout) do {
	default { player addHeadgear "VSM_OPS_multicam"};
	case "rcn_ld";
	case "rcn_drone";
	case "rcn_dmr": { player addHeadgear "VSM_Multicam_Boonie"};
	case "ar_c": {player addHeadgear "UK3CB_BAF_H_CrewHelmet_B"};
	case "pil": {player addHeadgear "H_PilotHelmetHeli_B"};
};

// add vest
switch (_loadout) do {
	default { player addVest "VSM_CarrierRig_Operator_Multicam"};
	case "sup_mmg_g";
	case "sqd_ar": { player addVest "VSM_CarrierRig_Gunner_Multicam"};
	case "pil": { player addVest "V_BandollierB_rgr"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "VSM_Multicam_Backpack_Kitbag"};
	case "sqd_med";
	case "sup_mat_l": {player addBackpack "VSM_Multicam_carryall"};
	case "sup_mor_l": {player addBackpack "B_Mortar_01_support_F"};
	case "sup_mor_g": {player addBackpack "B_Mortar_01_weapon_F"};
	case "rcn_drone": {player addBackpack "B_UAV_01_backpack_F"};
	case "ar_c";
	case "pil": {};
};

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "rhs_weap_SCARH_FDE_STD";
			  player addPrimaryWeaponItem "hlc_muzzle_Gunfighter_comp";
			  player addPrimaryWeaponItem "rhsusf_acc_wmx";
			  player addPrimaryWeaponItem "optic_MRCO"
	};
	case "sqd_ar": {player addWeapon "hlc_lmg_minimipara_long_railed";
					player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
					player addPrimaryWeaponItem "hlc_muzzle_SF3P_556"};
	case "sqd_eng": {player addWeapon "rhs_weap_M590_8RD"
	};
	case "sqd_dmr": {player addWeapon "rhs_weap_SCARH_FDE_LB";
					 player addPrimaryWeaponItem "hlc_muzzle_Gunfighter_comp";
					 player addPrimaryWeaponItem "rhsusf_acc_wmx";
					 player addPrimaryWeaponItem "ACE_optic_Hamr_2D";
					 player addPrimaryWeaponItem "rhsusf_acc_harris_bipod"
	};	
	case "rcn_dmr": {player addWeapon "rhs_weap_SCARH_FDE_LB";
					 player addPrimaryWeaponItem "hlc_muzzle_Gunfighter_comp";
					 player addPrimaryWeaponItem "rhsusf_acc_wmx";
					 player addPrimaryWeaponItem "ACE_optic_Hamr_2D";
					 player addPrimaryWeaponItem "rhsusf_acc_harris_bipod"
	};
	case "sup_mmg_g": {	player addWeapon "hlc_lmg_mk48mod1";
						player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
						player addPrimaryWeaponItem "rhsusf_acc_ARDEC_M240"
	};
	case "ar_c";
	case "pil": {player addWeapon "hlc_smg_mp5a3"};
};

// add secondary weapon
switch (_loadout) do {
	default {};
	case "plt";
	case "sqd_ld";
	case "sqd_gre";
	case "rcn_ld": {player addWeapon "rhs_weap_M320"};
};
// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_m72a7"};
	case "sup_mat_g": {	player addWeapon "rhs_weap_maaws";
						player addSecondaryWeaponItem "rhs_optic_maaws"};
};

// add primary ammo 
switch (_loadout) do {
	default {
		for "_i" from 1 to 1 do { player addItemToUniform "rhs_mag_20Rnd_SCAR_762x51_m61_ap"};
		for "_i" from 1 to 1 do { player addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m61_ap"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_mag_20Rnd_SCAR_762x51_m61_ap"};
		for "_i" from 1 to 4 do { player addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m62_tracer"};
	};
	case "sqd_ar": {
		for "_i" from 1 to 2 do { player addItemToVest "hlc_200rnd_556x45_B_SAW"};
		for "_i" from 1 to 2 do { player addItemToBackpack "hlc_200rnd_556x45_T_SAW"};
	};
	case "sqd_eng": {
		for "_i" from 1 to 6 do { player addItemToVest "rhsusf_8Rnd_Slug"};
		for "_i" from 1 to 6 do { player addItemToBackpack "rhsusf_8Rnd_00Buck"};
	};
	case "sqd_dmr";
	case "rcn_dmr": {
		for "_i" from 1 to 4 do { player addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m61_ap"};
		for "_i" from 1 to 4 do { player addItemToBackpack "rhs_mag_20Rnd_SCAR_762x51_m62_tracer"};
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 2 do { player addItemToVest "rhsusf_100Rnd_762x51_m61_ap"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m80a1epr"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer"};
	};
	case "rcn_drone": {
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m61_ap"};
		for "_i" from 1 to 2 do { player addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m62_tracer"};
		for "_i" from 1 to 2 do { player addItemToVest "ACE_UAVBattery"};
	};
	case "ar_c";
	case "pil": {
		for "_i" from 1 to 4 do { player addItemToVest "hlc_30Rnd_9x19_B_MP5"};
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
		for "_i" from 1 to 2 do { player addItemToBackpack "hlc_200rnd_556x45_B_SAW"};
		for "_i" from 1 to 2 do { player addItemToBackpack "hlc_200rnd_556x45_T_SAW"};
	};
	case "sup_mmg_l": {
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m61_ap"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m80a1epr"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer"};
	};
	case "sup_mat_l": {
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_maaws_HEAT"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhs_mag_maaws_HEDP"};
	};
};

// add other ammo 
switch (_loadout) do {
	default {};
	case "sup_mat_g": {
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_maaws_HEDP"};
		for "_i" from 1 to 1 do { player addItemToBackpack "rhs_mag_maaws_HEAT"};
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
player linkItem "ACE_NVG_Wide";
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
		for "_i" from 1 to 1 do { player addItemToBackpack "ACE_surgicalKit"};
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