createDialog "armoryDialog";

factionsArray = ["Hellenic Armed Forces","US Army","Portuguese Commandos"];
factionsDataArray = ["haf", "usArmy", "port"];
loadoutsArray = ["Platoon Leader", "Logi", "TACP", "Squad Leader", "Squad Grenadier", "Squad LAT", "Squad Medic", "Squad EOD", "Squad AR", "Squad AAR", "Recon Leader", "Recon role", "Armor Crew", "Pilot"];
loadoutsDataArray = ["plt", "logi", "tacp", "sqd_ld", "sqd_gre", "sqd_lat", "sqd_med", "sqd_eng", "sqd_ar", "sqd_aar", "rcn_ld", "rcn_mem", "ar_c", "pil"];

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
