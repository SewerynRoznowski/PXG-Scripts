class deploymentDialog
{
	idd = 441234;
	class controls
	{
		class baseFrame: PxgGuiBackground
		{
			idc = 441500;

			x = 0.29375 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.528 * safezoneH;

			onLoad = "execVM ""Scripts\Deployment\PXG_Update_Markers.sqf""";
		};
		class deploymentStructuredText: PxgGuiRscStructuredText
		{
			idc = -1;
			text = "Deployment"; //--- ToDo: Localize;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = 1 * GUI_GRID_H * GUI_GRID_H;
		};
		class deploymentListText: PxgGuiRscText
		{
			idc = -1;

			x = 0.305 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.05 * safezoneH;

			text = "Deployment Points";
		};

		class deploymentMap: RscMapControl
		{
			idc = 441501;

			x = 0.4 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.29 * safezoneW;
			h = 0.39 * safezoneH;
		};
		class deploymentList: PxgGuiRscListBox
		{
			idc = 441502;

			x = 0.305 * safezoneW + safezoneX;
			y = 0.35 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.32 * safezoneH;

			onLBSelChanged = "call compile preprocessfile 'Scripts\Deployment\PXG_Focus_Map.sqf'";
		};
		class deploymentButton: PxgGuiRscButton
		{
			idc = 441503;

			x = 0.305 * safezoneW + safezoneX;
			y = 0.70 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.03 * safezoneH;

			text = "Deploy!";
			action = "execVM ""Scripts\Deployment\PXG_Request_Teleport.sqf""";
		};
	};
};

