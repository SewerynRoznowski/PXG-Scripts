_index = lbCurSel 461500;
_spawnPosition = synchronizedObjects vehicle_spawn_master select _index;
_indexFaction = lbCurSel 461502;
_indexVariant = lbCurSel 461503;
_indexVehicle = lbCurSel 461501;
_faction = lbText [461502, _indexFaction];
_variant = lbText [461503, _indexVariant];

_variantArray = _variant splitString " ";
_variantEra = _variantArray #1;

_vehiclesScriptPath = "Scripts\Factions\";
_vehiclesScriptPath = _vehiclesScriptPath + _faction + "\" + _variantEra +"\vehicles_recolour.sqf";

_vehicleType = lbData [461501, lbCurSel 461501];

//Check for vehicles in radius of spawnpoint
private _nearVehicles = nearestObjects [getPos _spawnPosition, ["LandVehicle", "Air", "Ship", "Slingload_base_F"], 5];
_nearVehicles = _nearVehicles + nearestObjects [getPos _spawnPosition, ["Reammobox_F"], 1];
if (count _nearVehicles > 0) then {
	{
		//Check if vehicle is empty
		private _playerCrew = ({ isPlayer _x } count (crew _x));
	
		if (_playerCrew == 0) then {
			deleteVehicle _x;
		};	
	}
	forEach _nearVehicles;
	
} else {
	private _vehicle = createVehicle[_vehicleType, getPosATL _spawnPosition, [], 0, "CAN_COLLIDE"];
	_vehicle setDir getDir _spawnPosition;
	
	_vehicleSplitType = _vehicleType splitString "_";
	
	[_vehicle,_vehicleType] call compile preprocessfile _vehiclesScriptPath;
	
	//Remove default contents from vehicle
	clearItemCargoGlobal _vehicle;
	clearWeaponCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
	if (_vehicleSplitType #0 != "UK3CB") then
	{
		clearMagazineCargoGlobal _vehicle;
	};
	
	
	if (unitIsUAV _vehicle) then 
	{
		createVehicleCrew _vehicle;
	}
}