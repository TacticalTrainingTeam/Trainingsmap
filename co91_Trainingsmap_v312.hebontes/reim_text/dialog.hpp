/*
    author = Reimchen
    description = n.a.
*/

class reim_text {
    idd = 5200;
    movingenable = false;
    
    class controls 
    {
        class reim_background_6: ReimIGUIBack
        {
            idc = 5203;
            x = 0.29376 * safezoneW + safezoneX;
            y = 0.224977 * safezoneH + safezoneY;
            w = 0.41248 * safezoneW;
            h = 0.0440037 * safezoneH;
            colorBackground[] = {0.6,0.3,0.1,0.8};
        };
        class reim_text_8: ReimRscText
        {
            idc = 5204;
            text = "Reim_Text";
            x = 0.29376 * safezoneW + safezoneX;
            y = 0.224977 * safezoneH + safezoneY;
            w = 0.044092 * safezoneW;
            h = 0.0440037 * safezoneH;
        };
        class reim_text_9: ReimRscText
        {
            idc = 5205;
            text = "by Reimchen";
            x = 0.65468 * safezoneW + safezoneX;
            y = 0.224977 * safezoneH + safezoneY;
            w = 0.05156 * safezoneW;
            h = 0.0440037 * safezoneH;
        };
    };
};
