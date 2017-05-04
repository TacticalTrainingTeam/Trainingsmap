/*
	author = Reimchen
	description = n.a.
*/

class reim_arsenal {
	idd = 5100;
	movingenable = false;
	onload = "[] spawn {execVM 'reim_arsenal\r_init.sqf';};";
	
	class controls {
		class reim_background_2: ReimIGUIBack
		{
			idc = 5101;
			x = 0.304072 * safezoneW + safezoneX;
			y = 0.247053 * safezoneH + safezoneY;
			w = 0.391856 * safezoneW;
			h = 0.0439908 * safezoneH;
			colorBackground[] = {0.6,0.3,0.1,0.8};
		};
		class reim_background_3: ReimIGUIBack
		{
			idc = 5102;
			x = 0.314384 * safezoneW + safezoneX;
			y = 0.313039 * safezoneH + safezoneY;
			w = 0.10312 * safezoneW;
			h = 0.439908 * safezoneH;
		};
		class reim_background_4: ReimIGUIBack
		{
			idc = 5103;
			x = 0.582496 * safezoneW + safezoneX;
			y = 0.313039 * safezoneH + safezoneY;
			w = 0.10312 * safezoneW;
			h = 0.439908 * safezoneH;
		};
		class reim_background_5: ReimIGUIBack
		{
			idc = 5104;
			x = 0.44844 * safezoneW + safezoneX;
			y = 0.313039 * safezoneH + safezoneY;
			w = 0.10312 * safezoneW;
			h = 0.439908 * safezoneH;
		};
		class reim_button_3: ReimRscButton
		{
			idc = 5105;
			text = "X"; //--- ToDo: Localize;
			x = 0.695928 * safezoneW + safezoneX;
			y = 0.313039 * safezoneH + safezoneY;
			w = 0.020624 * safezoneW;
			h = 0.0439908 * safezoneH;
			tooltip = "Abbrechen"; //--- ToDo: Localize;
			action = "closeDialog 0";
		};
		class reim_button_4: ReimRscButton
		{
			idc = 5106;
			text = "Umruesten"; //--- ToDo: Localize;
			x = 0.695928 * safezoneW + safezoneX;
			y = 0.379025 * safezoneH + safezoneY;
			w = 0.046404 * safezoneW;
			h = 0.0439908 * safezoneH;
			tooltip = "markiertes Loadout auswaehlen"; //--- ToDo: Localize;
			action = "[] spawn {execVM 'reim_arsenal\r_class.sqf';};";
		};
		class reim_button_5: ReimRscButton
		{
			idc = 5107;
			text = "Weiter"; //--- ToDo: Localize;
			x = 0.344384 * safezoneW + safezoneX;
			y = 0.666632 * safezoneH + safezoneY;
			w = 0.041248 * safezoneW;
			h = 0.0439908 * safezoneH;
			tooltip = "markierte Seite auswaehlen"; //--- ToDo: Localize;
			action = "[] spawn {execVM 'reim_arsenal\r_side.sqf';};";
		};
		class reim_button_6: ReimRscButton
		{
			idc = 5108;
			text = "Weiter"; //--- ToDo: Localize;
			x = 0.47844 * safezoneW + safezoneX;
			y = 0.666632 * safezoneH + safezoneY;
			w = 0.041248 * safezoneW;
			h = 0.0439908 * safezoneH;
			tooltip = "markierte Fraktion auswaehlen"; //--- ToDo: Localize;
			action = "[] spawn {execVM 'reim_arsenal\r_faction.sqf';};";
		};
		class reim_list_2: ReimRscListBox
		{
			idc = 5109;
			x = 0.592808 * safezoneW + safezoneX;
			y = 0.379026 * safezoneH + safezoneY;
			w = 0.082496 * safezoneW;
			h = 0.351926 * safezoneH;
		};
		class reim_combo_1: ReimRscCombo
		{
			idc = 5110;
			x = 0.324696 * safezoneW + safezoneX;
			y = 0.379025 * safezoneH + safezoneY;
			w = 0.082496 * safezoneW;
			h = 0.0219954 * safezoneH;
		};
		class reim_combo_2: ReimRscCombo
		{
			idc = 5111;
			x = 0.458752 * safezoneW + safezoneX;
			y = 0.379025 * safezoneH + safezoneY;
			w = 0.082496 * safezoneW;
			h = 0.0219954 * safezoneH;
		};
		class reim_text_3: ReimRscText
		{
			idc = 5112;
			text = "Reim_Arsenal"; //--- ToDo: Localize;
			x = 0.304072 * safezoneW + safezoneX;
			y = 0.247053 * safezoneH + safezoneY;
			w = 0.05156 * safezoneW;
			h = 0.0439908 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class reim_text_4: ReimRscText
		{
			idc = 5113;
			text = "by Reimchen"; //--- ToDo: Localize;
			x = 0.644368 * safezoneW + safezoneX;
			y = 0.247053 * safezoneH + safezoneY;
			w = 0.05156 * safezoneW;
			h = 0.0439908 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class reim_text_5: ReimRscText
		{
			idc = 5114;
			text = "     Seite"; //--- ToDo: Localize;
			x = 0.34532 * safezoneW + safezoneX;
			y = 0.335035 * safezoneH + safezoneY;
			w = 0.041248 * safezoneW;
			h = 0.0219954 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class reim_text_6: ReimRscText
		{
			idc = 5115;
			text = "  Fraktion"; //--- ToDo: Localize;
			x = 0.479376 * safezoneW + safezoneX;
			y = 0.335035 * safezoneH + safezoneY;
			w = 0.041248 * safezoneW;
			h = 0.0219954 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class reim_text_7: ReimRscText
		{
			idc = 5116;
			text = "    Klasse"; //--- ToDo: Localize;
			x = 0.613432 * safezoneW + safezoneX;
			y = 0.335035 * safezoneH + safezoneY;
			w = 0.041248 * safezoneW;
			h = 0.0219954 * safezoneH;
			colorText[] = {1,1,1,1};
		};
	};
};
