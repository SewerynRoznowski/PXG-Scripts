class armoryDialog
{
	idd = 1234;
	class controls
	{
		class baseFrame: RscFrame
		{
			idc = 1800;

			x = 0.350349 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.299302 * safezoneW;
			h = 0.528 * safezoneH;
			colorBackground[] = {0.1, 0.1, 0.1, 0.7}; 
			style = 128;
		};
		class factionList: RscTree
		{
			idc = 1501;

			x = 0.358023 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.22 * safezoneH;

			colorBackground[] = {0,0,0,0.3};

			onTreeSelChanged = "call compile preprocessfile 'Scripts\Armory\Functions\PXG_Refresh_Loadouts.sqf'";

		};
		class buttonGetLoadout: RscButton
		{
			idc = 1600;
			action = "[execVM ""Scripts\Armory\Functions\PXG_Request_Loadout.sqf""]";

			text = "Get Loadout"; //--- ToDo: Localize;
			x = 0.358023 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class loadoutList: RscTree
		{
			idc = 1503;

			x = 0.51 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.352 * safezoneH;

			colorBackground[] = {0,0,0,0.3};
		};
		class factionsText: RscText
		{
			idc = 1000;

			text = "Factions"; //--- ToDo: Localize;
			x = 0.358023 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class loadoutsText: RscText
		{
			idc = 1001;

			text = "Loadouts"; //--- ToDo: Localize;
			x = 0.51 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0498837 * safezoneW;
			h = 0.044 * safezoneH;

		};
		class sideList: RscListBox
		{
			idc = 1500;
			x = 0.358023 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.066 * safezoneH;

			onLBSelChanged = " call compile preprocessfile 'Scripts\Armory\Functions\PXG_Refresh_Factions.sqf'";
		};
		class sideText: RscText
		{
			idc = 1004;
			text = "Side"; //--- ToDo: Localize;
			x = 0.358023 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0652326 * safezoneW;
			h = 0.044 * safezoneH;
		};
	};
};