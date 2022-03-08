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
	default { player forceAddUniform "rhssaf_uniform_m10_digital_summer"};
	case "pil": { player forceAddUniform "rhssaf_uniform_heli_pilot"};
};
	
// add helmet
switch (_loadout) do {
	default { player addHeadgear "rhssaf_helmet_m97_digital"};
	case "rcn_ld";
	case "rcn_dmr";
	case "rcn_drone" : {player addHeadgear "rhssaf_helmet_m97_veil_digital"};
	case "ar_c": {player addHeadgear "UK3CB_H_Crew_Cap"};
	case "pil": {player addHeadgear "rhs_zsh7a_mike"};
};

// add vest
switch (_loadout) do {
	default { player addVest "rhssaf_vest_md99_digital_rifleman"};
	case "plt";
	case "logi";
	case "tacp";
	case "sqd_ld": { player addVest "rhssaf_vest_md99_digital_rifleman_radio"};
	case "sqd_med": { player addVest "rhssaf_vest_md12_digital"};
	case "arc_c";
	case "pil": { player addVest "rhssaf_vest_md99_digital"};
};

// add backpack 
switch (_loadout) do {
	default { player addBackpack "rhssaf_kitbag_digital"};
	case "sqd_med";
	case "sqd_ar";
	case "sqd_aar";
	case "sup_mat_l";
	case "sup_mat_g";
	case "sup_mmg_g";
	case "sup_mmg_l": {player addBackpack "B_Carryall_oli"};
	case "sup_mor_l": {player addBackpack "B_Mortar_01_support_F"};
	case "sup_mor_g": {player addBackpack "B_Mortar_01_weapon_F"};
	case "rcn_drone": {player addBackpack "B_UAV_01_backpack_F"};
	case "ar_c";
	case "pil": {};
};

// add primary weapon
switch (_loadout) do {
	default { player addWeapon "rhs_weap_m21s";
			  player addPrimaryWeaponItem "rhs_acc_ekp8_02"
	};
	case "plt";
	case "sqd_ld";
	case "rcn_ld";
	case "sqd_gre":{ player addWeapon "rhs_weap_m21a_pbg40";
					player addPrimaryWeaponItem "rhs_acc_ekp8_02"
	};
	case "sqd_ar": {player addWeapon "rhs_weap_m84"
	};
	case "sqd_dmr": {player addWeapon "rhs_weap_m76";
					 player addPrimaryWeaponItem "rhs_acc_ekp8_02";
	};	
	case "rcn_dmr": {player addWeapon "rhs_weap_m76";
					 player addPrimaryWeaponItem "rhs_acc_pso1m21";
	};
	case "sup_mmg_g": {	player addWeapon "rhs_weap_m84";
	};
};

// add secondary weapon

// add launcher
switch (_loadout) do {
	default {};
	case "sqd_lat": {player addWeapon "rhs_weap_m80"};
	case "sup_mat_g": {	player addWeapon "rhs_weap_smaw_green";
						player addSecondaryWeaponItem "rhs_weap_optic_smaw"};
};

// add primary ammo 
switch (_loadout) do {
	default {
		for "_i" from 1 to 1 do { player addItemToUniform "rhsgref_30rnd_556x45_m21_t"};
		for "_i" from 1 to 1 do { player addItemToVest "rhsgref_30rnd_556x45_m21_t"};
		for "_i" from 1 to 2 do { player addItemToBackpack "rhsgref_30rnd_556x45_m21_t"};
		for "_i" from 1 to 4 do { player addItemToBackpack "rhsgref_30rnd_556x45_m21"};
	};
	case "sqd_ar": {
		for "_i" from 1 to 4 do { player addItemToBackpack "rhs_100Rnd_762x54mmR_green"};
	};
	case "sqd_dmr";
	case "rcn_dmr": {
		for "_i" from 1 to 8 do { player addItemToBackpack "rhsgref_10Rnd_792x57_m76"};
		for "_i" from 1 to 8 do { player addItemToBackpack "rhssaf_10Rnd_792x57_m76_tracer"};
	};
	case "sup_mmg_g": {
		for "_i" from 1 to 4 do { player addItemToBackpack "rhs_100Rnd_762x54mmR_green"};
	};
	case "rcn_drone": {
		for "_i" from 1 to 1 do { player addItemToUniform "rhsgref_30rnd_556x45_m21_t"};
		for "_i" from 1 to 2 do { player addItemToVest "rhsgref_30rnd_556x45_m21_t"};
		for "_i" from 1 to 2 do { player addItemToVest "ACE_UAVBattery"};
	};
	case "ar_c";
	case "pil": {
		for "_i" from 1 to 1 do { player addItemToUniform "rhsgref_30rnd_556x45_m21"};
		for "_i" from 1 to 1 do { player addItemToVest "rhsgref_30rnd_556x45_m21"};
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
		for "_i" from 1 to 3 do { player addItemToBackpack "rhs_100Rnd_762x54mmR_green"};
	};
	case "sup_mmg_l": {
		for "_i" from 1 to 3 do { player addItemToBackpack "rhs_100Rnd_762x54mmR_green"};
	};
	case "sup_mat_l": {
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
		for "_i" from 1 to 2 do { player addItemToVest "rhssaf_mag_brd_m83_red"};
		for "_i" from 1 to 2 do { player addItemToVest "rhssaf_mag_brd_m83_green"};
		for "_i" from 1 to 2 do { player addItemToVest "rhssaf_mag_brd_m83_white"};
		for "_i" from 1 to 2 do { player addItemToVest "rhssaf_mag_br_m84"};
	};
};

// add 40mm grenades
switch (_loadout) do {
	default {};
	case "plt": {
		for "_i" from 1 to 4 do {player addItemToBackpack "rhs_VOG25"}; 
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_White"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_Red"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_purple"};
		for "_i" from 1 to 2 do {player addItemToBackpack "rhs_VG40OP_white"};
	};
	case "sqd_ld";
	case "sqd_gre";
	case "rcn_ld": {
		for "_i" from 1 to 10 do {player addItemToBackpack "rhs_VOG25"};
		for "_i" from 1 to 4 do {player addItemToBackpack "hlc_GRD_White"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_Red"};
		for "_i" from 1 to 2 do {player addItemToBackpack "hlc_GRD_purple"};
		for "_i" from 1 to 2 do {player addItemToBackpack "rhs_VG40OP_white"};
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