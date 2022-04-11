_index = lbCurSel 451500;
_spawnPosition = synchronizedObjects item_spawn_master select _index;

//Check for vehicles in radius of spawnpoint
private _nearVehicles = nearestObjects [getPos _spawnPosition, ["LandVehicle", "Air", "Ship", "Slingload_base_F"], 5];
_nearVehicles = _nearVehicles + nearestObjects [getPos _spawnPosition, ["Reammobox_F"], 1];
if (count _nearVehicles > 0) then {
	{
		//Check if vehicle is empty
		private _playerCrew = ({ isPlayer _x } count (crew _x));
	
		if (_playerCrew == 0) then {
			
		};	
	}
	forEach _nearVehicles;
	
} else {
	private _crate = createVehicle["Box_NATO_Ammo_F", getPosATL _spawnPosition, [], 0, "CAN_COLLIDE"];
	_crate setDir getDir _spawnPosition;
	
	//Remove default contents from crate
	clearItemCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;
	
	[_crate] call compile preprocessFile "Scripts\Resupply\Functions\PXG_Crate_Fill.sqf";
	[_crate, 1] call ace_cargo_fnc_setSize;
	[_crate, true, [0,1,1], 0, true] call ace_dragging_fnc_setCarryable;
}