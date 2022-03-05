createDialog "armoryDialog";

factionsArray = ["Hellenic Armed Forces","US Army","Portuguese Commandos"];
factionsDataArray = ["haf", "usArmy", "port"];
loadoutsArray = ["Platoon Leader", "Logi", "TACP", "Squad Leader", "Squad Medic", "Squad LAT", "Squad Grenadier", "Squad EOD", "Squad AR", "Squad AAR", "Squad DMR", "Support MMG Leader", "Support MMG Gunner", "Support MAT Leader", "Support MAT Gunner", "Support Mortar Leader", "Support Mortar Gunner", "Recon Leader", "Recon Marksman", "Recon Drone Operator", "Armor Crew", "Pilot"];
loadoutsDataArray = ["plt", "logi", "tacp", "sqd_ld", "sqd_med", "sqd_lat","sqd_gre", "sqd_eng", "sqd_ar", "sqd_aar", "sqd_dmr", "sup_mmg_l", "sum_mmg_g", "sup_mat_l", "sup_mat_g", "sup_mor_l", "sup_mor_g", "rcn_ld", "rcn_dmr", "rcn_drone", "ar_c", "pil"];

{
	lbAdd [1500, _x];
}	forEach factionsArray;

{
	lbSetData [1500, _forEachIndex, _x];
}	forEach factionsDataArray;

{
	lbAdd [1501, _x];
} forEach loadoutsArray;

{
	lbSetData [1501, _forEachIndex, _x];
}	forEach loadoutsDataArray;
