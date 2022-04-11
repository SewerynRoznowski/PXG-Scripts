createDialog "dialog_motorpool"; 
//Opens the vehicle spawn dialog and fills lists.

sidesArray = ["Blufor", "Opfor", "Indep"];

{
	lbAdd [461504, _x];
}	forEach sidesArray;

{
	lbAdd [461500, vehicleVarName _x]; 
} forEach synchronizedObjects vehicle_spawn_master; //Fills list of available spawnpoints

