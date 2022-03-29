class dialog_supply_spawn
{
	idd = 451922;
	class controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by J. Dimlight, v1.063, #Xinebe)
		////////////////////////////////////////////////////////


		class RscFrame_1: IGUIBack
		{
			idc = -1;

			x = 0.29375 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.528 * safezoneH;
		};
		
		class RscStructuredText_1: RscStructuredText
		{
			idc = -1;

			text = "Supply Spawn"; //--- ToDo: Localize;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.13,0.54,0.21,0.8};
			sizeEx = 1 * GUI_GRID_H;
		};
		
		class dim_supply_spawnpoint_list: RscListBox
		{
			idc = 451500;

			x = 0.586934 * safezoneW + safezoneX;
			y = 0.37152 * safezoneH + safezoneY;
			w = 0.0947265 * safezoneW;
			h = 0.274305 * safezoneH;
		};
		
		class dim_supply_cratecontent_list: RscListBox
		{
			idc = 451501;

			x = 0.461844 * safezoneW + safezoneX;
			y = 0.37108 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.274443 * safezoneH;
		};
		
		class dim_supply_faction_list: RscListBox
		{
			idc = 451502;
			onLBSelChanged = "call compile preprocessfile 'Scripts\Resupply\Functions\PXG_Refresh_Variants.sqf'";

			x = 0.342734 * safezoneW + safezoneX;
			y = 0.37152 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.274305 * safezoneH;
		};
		
		class dim_supply_faction_variant_list: RscListbox
		{
			idc = 451503;
			onLBSelChanged = "call compile preprocessfile 'Scripts\Resupply\Functions\PXG_Refresh_Supplies.sqf'";
			
			x = 0.342734 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.077 * safezoneH;
		};
		
		class dim_supply_faction_side_list: RscListbox
		{
			idc = 451504;
			onLBSelChanged = "call compile preprocessfile 'Scripts\Resupply\Functions\PXG_Refresh_Factions.sqf'";
			
			x = 0.342734 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.095 * safezoneW;
			h = 0.066 * safezoneH;
		};
		
		class dim_supply_spawn_button: RscButton
		{
			idc = 451600;
			action = "execVM 'Scripts\Resupply\Functions\PXG_Crate_Spawn.sqf'";

			text = "Spawn Box"; //--- ToDo: Localize;
			x = 0.611375 * safezoneW + safezoneX;
			y = 0.68744 * safezoneH + safezoneY;
			w = 0.0703127 * safezoneW;
			h = 0.0624998 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};