createDialog "dialog_supply_spawn"; 
//Opens the supply spawn dialog and fills lists.

sidesArray = ["Blufor", "Opfor", "Indep"];

{
	lbAdd [451504, _x];
}	forEach sidesArray;

{
	lbAdd [451500, vehicleVarName _x]; 
} forEach synchronizedObjects item_spawn_master; //Fills list of available spawnpoints