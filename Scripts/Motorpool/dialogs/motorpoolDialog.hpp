class dialog_motorpool
{
	idd = 461922;
	class controls
	{
		
		class RscFrame_1: PxgGuiBackground
		{
			idc = -1;

			x = 0.29375 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.528 * safezoneH;
		};
		
		class RscStructuredText_1: RscStructuredText
		{
			idc = 1100;
			text = "Vehicle Spawn"; //--- ToDo: Localize;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = 			
			{
				"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
				"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
				"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
				"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.8])"
			};
			sizeEx = 1 * GUI_GRID_H * GUI_GRID_H;
		};
		
		class dim_vehicle_spawnpoint_list: PxgGuiRscListBox
		{
			idc = 461500;

			x = 0.586934 * safezoneW + safezoneX;
			y = 0.37152 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.274305 * safezoneH;
		};
	
		class dim_vehicle_list: PxgGuiRscListBox
		{
			idc = 461501;

			x = 0.461844 * safezoneW + safezoneX;
			y = 0.37108 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.274443 * safezoneH;
		};
	
		class dim_vehicle_faction_list: PxgGuiRscListBox
		{
			idc = 461502;
			onLBSelChanged = "call compile preprocessfile 'Scripts\Motorpool\Functions\PXG_Refresh_Variants.sqf'";

			x = 0.305 * safezoneW + safezoneX;
			y = 0.37152 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.274305 * safezoneH;
		};
		
		class dim_vehicle_faction_variant_list: PxgGuiRscListbox
		{
			idc = 461503;
			onLBSelChanged = "call compile preprocessfile 'Scripts\Motorpool\Functions\PXG_Refresh_Vehicles.sqf'";
			
			x = 0.342734 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.077 * safezoneH;
		};
		
		class dim_vehicle_faction_side_list: PxgGuiRscListbox
		{
			idc = 461504;
			onLBSelChanged = "call compile preprocessfile 'Scripts\Motorpool\Functions\PXG_Refresh_Factions.sqf'";
			
			x = 0.342734 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.066 * safezoneH;
		};
		
		class dim_vehicle_spawn_button: PxgGuiRscButton
		{
			idc = 461600;
			action = "execVM 'Scripts\Motorpool\Functions\PXG_Spawn_Vehicle.sqf'";

			text = "Spawn Box"; //--- ToDo: Localize;
			x = 0.611375 * safezoneW + safezoneX;
			y = 0.68744 * safezoneH + safezoneY;
			w = 0.0703127 * safezoneW;
			h = 0.0624998 * safezoneH;
		};
	};
};