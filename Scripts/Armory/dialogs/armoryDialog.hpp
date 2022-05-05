class armoryDialog
{
	idd = 1234;
	class controls
	{
		class baseFrame: PxgGuiBackground
		{
			idc = 1800;

			x = 0.350349 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.299302 * safezoneW;
			h = 0.528 * safezoneH;
		};
		class factionList: PxgGuiRscTree
		{
			idc = 1501;

			x = 0.358023 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.22 * safezoneH;

			onTreeSelChanged = "call compile preprocessfile 'Scripts\Armory\Functions\PXG_Refresh_Loadouts.sqf'";

		};
		class buttonGetLoadout: PxgGuiRscButton
		{
			idc = 1600;
			action = "[execVM ""Scripts\Armory\Functions\PXG_Request_Loadout.sqf""]";

			text = "Get Loadout"; //--- ToDo: Localize;
			x = 0.358023 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class loadoutList: PxgGuiRscTree
		{
			idc = 1503;

			x = 0.51 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.352 * safezoneH;

		};
		class factionsText: PxgGuiRscText
		{
			idc = 1000;

			text = "Factions"; //--- ToDo: Localize;
			x = 0.358023 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class loadoutsText: PxgGuiRscText
		{
			idc = 1001;

			text = "Loadouts"; //--- ToDo: Localize;
			x = 0.51 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0498837 * safezoneW;
			h = 0.044 * safezoneH;

		};
		class sideList: PxgGuiRscListBox
		{
			idc = 1500;
			x = 0.358023 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.066 * safezoneH;

			onLBSelChanged = " call compile preprocessfile 'Scripts\Armory\Functions\PXG_Refresh_Factions.sqf'";
		};
		class sideText: PxgGuiRscText
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