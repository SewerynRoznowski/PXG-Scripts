params["_vehicle","_vehicleType"];

switch(_vehicleType) do
{
	case "I_LT_01_AT_F";
	case "I_LT_01_cannon_F";
	case "I_LT_01_AA_F":
	{
		[
			_vehicle,
			["Indep_Olive",1], 
			["showTools",0,"showCamonetHull",0,"showBags",0,"showSLATHull",0]
		] call BIS_fnc_initVehicle;
	};
	
	default {};
};