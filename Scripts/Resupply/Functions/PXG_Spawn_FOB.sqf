params ["_crate"];
// Crude FOB bulding script 

// Get location of crate
_location = getPos _crate;

// Delete crate 
deleteVehicle _crate;

// Spawn an FOB in place of the FOB
_spawn = createVehicle["Land_CampingChair_V2_F", _location, [], 0, "CAN_COLLIDE"];

// Retrieve the list of avialable deployment positions, add newly created FOB to the list and save the list into a global variable 
_deployment = missionNamespace getVariable "Pxg_Deployment_Positions";
_deployment pushBack _spawn; 
missionNamespace setVariable ["Pxg_Deployment_Positions", _deployment, true];
