// Adds event handler to give new loadout after respawn
player addEventHandler ["Respawn", { [player getVariable "PXG_Player_side", player getVariable "PXG_Player_Faction", player getVariable "PXG_Player_Variant", player getVariable "PXG_Player_Loadout" ] call compile preprocessfile "scripts\Armory\Functions\PXG_Recieve_Loadout.sqf" } ];
call compile preprocessfile "scripts\Armory\Functions\PXG_Set_SlotID.sqf";
