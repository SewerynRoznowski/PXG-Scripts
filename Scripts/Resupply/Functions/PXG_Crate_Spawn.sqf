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

	// This adds ACE interaction option to the spawned crate, allows for building of a crude FOB 
	// This function is not global, option only shows up for the person who spawned the crate, doing remoteexec to run it locally on every machine should work. 
	// Need to build logic so this only gets executed on FOB crates. 
	// The condition statement requires logi to build FOB, the option will show up for people who are not logi, but will not work. 
	_action = ["BuildShit","Build Shit","",{[_target] execVM "Scripts\Resupply\Functions\PXG_Spawn_FOB.sqf"},{_player getVariable "ACE_IsEngineer" == 2 }] call ace_interact_menu_fnc_createAction;
	[_crate, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


	[_crate] call compile preprocessFile "Scripts\Resupply\Functions\PXG_Crate_Fill.sqf";
	[_crate, 1] call ace_cargo_fnc_setSize;
	[_crate, true, [0,1,1], 0, true] call ace_dragging_fnc_setCarryable;
}