class armoryDialog
{
	idd = 1234;
	class controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Spylon, v1.063, #Gixiza)
		////////////////////////////////////////////////////////

		class baseFrame: IGUIBack
		{
			idc = 1800;

			x = 0.350349 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.299302 * safezoneW;
			h = 0.528 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class factionList: RscListBox
		{
			idc = 1501;

			x = 0.358023 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.22 * safezoneH;

			onLBSelChanged = "call compile preprocessfile 'Scripts\Armory\Functions\PXG_Refresh_Variants.sqf'";
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
		class loadoutList: RscListBox
		{
			idc = 1503;

			x = 0.530698 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.107442 * safezoneW;
			h = 0.352 * safezoneH;
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
			x = 0.530698 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0498837 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class sideList: RscListbox
		{
			idc = 1500;
			x = 0.358023 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.066 * safezoneH;

			onLBSelChanged = "call compile preprocessfile 'Scripts\Armory\Functions\PXG_Refresh_Factions.sqf'";
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
		class variantText: RscText
		{
			idc = 1005;
			text = "Variant"; //--- ToDo: Localize;
			x = 0.442442 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.0575581 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class variantList: RscListbox
		{
			idc = 1502;
			x = 0.442442 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.22 * safezoneH;

			onLBSelChanged = "call compile preprocessfile 'Scripts\Armory\Functions\PXG_Refresh_Loadouts.sqf'";
		};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};