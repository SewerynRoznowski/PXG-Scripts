class armoryDialog
{
	idd = 1234;
	class controls
	{
		

		class baseFrame : IGUIBack
		{
			idc = 1800;
			x = 0.36186 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.184186 * safezoneW;
			h = 0.473 * safezoneH;
			colorBackground[] = { -1,-1,-1,0.5 };
		};
		class factionList : RscListbox
		{
			idc = 1500;
			x = 0.365698 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.072907 * safezoneW;
			h = 0.308 * safezoneH;
		};
		class buttonGetLoadout : RscButton
		{
			idc = 1600;
			text = "Get Loadout";
			x = 0.365698 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.0690698 * safezoneW;
			h = 0.066 * safezoneH;
			action = [execVM "Scripts\Armory\recieveLoadout.sqf"];
		};
		class loadoutList : RscListbox
		{
			idc = 1501;
			x = 0.465465 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.072907 * safezoneW;
			h = 0.308 * safezoneH;
		};
		class factionsText : RscText
		{
			idc = 1000;
			text = "Factions"; //--- ToDo: Localize;
			x = 0.365698 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0306977 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class loadoutsText : RscText
		{
			idc = 1001;
			text = "Loadouts"; //--- ToDo: Localize;
			x = 0.465465 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0306977 * safezoneW;
			h = 0.055 * safezoneH;
		};


	};
};