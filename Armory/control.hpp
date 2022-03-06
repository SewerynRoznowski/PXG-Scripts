class armoryDialog
{
	idd = 1234;
	class controls
	{
		

		class baseFrame: IGUIBack
		{
			idc = 1800;

			x = 0.36186 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.218721 * safezoneW;
			h = 0.473 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class factionList: RscListBox
		{
			idc = 1500;

			x = 0.365698 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.0882558 * safezoneW;
			h = 0.308 * safezoneH;
		};
		class buttonGetLoadout: RscButton
		{
			idc = 1600;
			action = "[execVM ""Scripts\Armory\recieveLoadout.sqf""]";

			text = "Get Loadout"; //--- ToDo: Localize;
			x = 0.365698 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class loadoutList: RscListBox
		{
			idc = 1501;

			x = 0.465465 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.111279 * safezoneW;
			h = 0.308 * safezoneH;
		};
		class factionsText: RscText
		{
			idc = 1000;

			text = "Factions"; //--- ToDo: Localize;
			x = 0.365698 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0460465 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class loadoutsText: RscText
		{
			idc = 1001;

			text = "Loadouts"; //--- ToDo: Localize;
			x = 0.465465 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0498837 * safezoneW;
			h = 0.044 * safezoneH;
		};


	};
};