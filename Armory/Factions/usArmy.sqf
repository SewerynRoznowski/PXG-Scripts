_indexFaction = lbCurSel 1500;
_indexLoadout = lbCurSel 1501;

_faction = lbData [1500, _indexFaction];
_loadout = lbData [1501, _indexLoadout];

// generate slot ID
_slotStr = str player;
_slotId = _slotStr splitString "_";
_slotSide = _slotId #0;
_slotGroup = _slotId #1;
_slotRole = _slotId #2;
_srCh = 1;
_lrCh = 1;

// Assign radio channel
switch (_slotGroup) do {
	default { };
	case "plt": {_srCh = 3};
	case "sqd1": { _srCh = 1};
	case "sqd2": { _srCh = 2};
	case "sqd3": { _srCh = 3};
	case "sup1": { _srCh = 5};
	case "sup2": { _srCh = 6};
	case "sup3": { _srCh = 7};
	case "sup4": { _srCh = 8};
	case "sup5": { _srCh = 9};
	case "rcn1": { _srCh = 10};
	case "rcn2": { _srCh = 11};
	case "tac": {_srCh = 12; _lrCh = 2};
	case "ar1": {_srCh = 13};
	case "ar2": {_srCh = 14};
	case "ar3": {_srCh = 15};
	case "ar4": {_srCh = 16};
};

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
	default { player forceAddUniform "rhs_uniform_cu_ocp"};
	case "pil": { player forceAddUniform "U_B_HeliPilotCoveralls"};
	case "ar_c": { player forceAddUniform "rhs_uniform_g3_mc"};
};
	
// add helmet
switch (_loadout) do {
	default { player addHeadgear "rhsusf_ach_helmet_ocp_alt"};
	case "plt";
	case "logi";
	case "sqd_eng";
	case "tacp": { player addHeadgear "rhsusf_ach_helmet_headset_ocp_alt"};
	case "sqd_ar";
	case "sqd_aar";
	case "sup_mmg_l";
	case "sup_mmg_g";
	case "sqd_gre": { player addHeadgear "rhsusf_ach_helmet_ESS_ocp_alt"};
	case "rcn_ld";
	case "rcn_drone";
	case "rcn_dmr": { player addHeadgear "rhsusf_ach_helmet_camo_ocp"};
	case "ar_c": {player addHeadgear "rhsusf_cvc_ess"};
	case "pil": {player addHeadgear "rhsusf_hgu56p_visor_green"};
};

// add vest
switch (_loadout) do {
	default { player addVest "rhsusf_iotv_ocp_Rifleman"};
	case "plt";
	case "sqd_ld": { player addVest "rhsusf_iotv_ocp_Squadleader"};
	case "logi";
	case "tacp": { player addVest "rhsusf_iotv_ocp_Teamleader"};
	case "sqd_ar";
	case "sqd_aar": { player addVest "rhsusf_iotv_ocp_SAW"};
	case "sqd_gre": { player addVest "rhsusf_iotv_ocp_Grenadier"};
	case "pil": { player addVest "V_BandollierB_rgr"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "rhsusf_assault_eagleaiii_ocp"};
	case "sqd_med";
	case "sup_mat_l": {player addBackpack "VSM_OCP_carryall"};
	case "sqd_eng";
	case "sqd_ar";
	case "sqd_aar": {player addBackpack "VSM_OCP_Backpack_Kitbag"};
	case "sup_mor_l": {player addBackpack "B_Mortar_01_support_F"};
	case "sup_mor_g": {player addBackpack "B_Mortar_01_weapon_F"};
	case "rcn_drone": {player addBackpack "B_UAV_01_backpack_F"};
	case "ar_c";
	case "pil": {};
};

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "rhs_weap_m4a1_carryhandle_grip2";
			  player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
			  player addPrimaryWeaponItem "rhsusf_acc_SFMB556";
			  player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk"
	};
	case "plt";
	case "sqd_ld";
	case "rcn_ld";
	case "sqd_gre":{ player addWeapon "rhs_weap_m4a1_carryhandle_m203";
					player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
					player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
					player addPrimaryWeaponItem "rhsusf_acc_SFMB556"
	};
	case "sqd_ar": {player addWeapon "rhs_weap_m249_pip";
					player addPrimaryWeaponItem "optic_MRCO";
					player addPrimaryWeaponItem "rhsusf_acc_SFMB556"
	};
	case "sqd_dmr": {player addWeapon "rhs_weap_m14ebrri";
					 player addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
					 player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
					 player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
					 player addPrimaryWeaponItem "rhsusf_acc_m14_flashsuppresor"
	};	
	case "rcn_dmr": {player addWeapon "rhs_weap_m14ebrri";
					 player addPrimaryWeaponItem "rhsusf_acc_ACOG_MDO";
					 player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
					 player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
					 player addPrimaryWeaponItem "rhsusf_acc_m14_flashsuppresor"
	};
	case "sup_mmg_g": {	player addWeapon "rhs_weap_m240G";
						player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
						player addPrimaryWeaponItem "rhsusf_acc_ARDEC_M240"
	};
	case "ar_c";
	case "pil": {player addWeapon "UK3CB_BAF_L91A1"};
};

// add secondary weapon

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_M136"};
	case "sup_mat_g": {	player addWeapon "rhs_weap_smaw_green";
						player addSecondaryWeaponItem "rhs_weap_optic_smaw"};
};

// add primary ammo 
switch (_loadout) do {
	default {
		for "_i" from 1 to 4 do { player addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag"};
		for "_i" from 1 to 4 do { player addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"};
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
		for "_i" from 1 to 4 do { player addItemToVest "UK3CB_BAF_9_30Rnd"};
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
player linkItem "ACE_NVG_Gen4_Black";
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

// configure radios
waitUntil { ([] call acre_api_fnc_isInitialized) };

/// Check for radio type
_hasRadio343 = [player, "ACRE_PRC343"] call acre_api_fnc_hasKindOfRadio;
_hasRadio152 = [player, "ACRE_PRC152"] call acre_api_fnc_hasKindOfRadio;
_hasRadio117 = [player, "ACRE_PRC117F"] call acre_api_fnc_hasKindOfRadio;

// set radio channel, default channel 1 is correct for most 152s and 117. Hence only swap channel in specific case.
if (_hasradio343) then { [(["ACRE_PRC343"] call acre_api_fnc_getRadioByType), _srCh] call acre_api_fnc_setRadioChannel};
if (_hasradio152 && _slotGroup == "plt") then { [(["ACRE_PRC152"] call acre_api_fnc_getRadioByType), _srCh] call acre_api_fnc_setRadioChannel};
if (_hasradio117 && _slotRole == "fac1") then { [(["ACRE_PRC117F"] call acre_api_fnc_getRadioByType), _lrCh] call acre_api_fnc_setRadioChannel};