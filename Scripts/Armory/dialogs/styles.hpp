import RscObject;
import RscText;
import RscFrame;
import RscLine;
import RscProgress;
import RscPicture;
import RscPictureKeepAspect;
import RscVideo;
import RscHTML;
import RscButton;
import RscShortcutButton;
import RscEdit;
import RscCombo;
import RscListBox;
import RscListNBox;
import RscXListBox;
import RscTree;
import RscSlider;
import RscXSliderH;
import RscActiveText;
import RscActivePicture;
import RscActivePictureKeepAspect;
import RscStructuredText;
import RscToolbox;
import RscControlsGroup;
import RscControlsGroupNoScrollbars;
import RscControlsGroupNoHScrollbars;
import RscControlsGroupNoVScrollbars;
import RscButtonTextOnly;
import RscButtonMenu;
import RscButtonMenuOK;
import RscButtonMenuCancel;
import RscButtonMenuSteam;
import RscMapControl;
import RscMapControlEmpty;
import RscCheckBox;

class PxgGuiBackground: RscFrame 
{
	colorBackground[] = {0.1, 0.1, 0.1, 0.7}; 
	style = 128;
};

class PxgGuiRscTree: RscTree
{
	colorBackground[] = {0,0,0,0.3};
};

class PxgGuiRscButton: RscButton
{

};

class PxgGuiRscText: RscText
{

};

class PxgGuiRscListBox: RscListBox
{

};