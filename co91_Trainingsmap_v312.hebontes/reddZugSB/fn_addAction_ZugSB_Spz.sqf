
if (hasInterface) then 
{
    params ["_object"];

    private _ZugSB_Spz_Start =
    [
        "ZugSB_Spz_Start",
        "Übungsbeginn",
        "",
        {
            {
                reddZugSB_Spz_0 enableSimulationGlobal true;
                missionNamespace setVariable ["reddZugSB_Spz_enable", false, true];
            } remoteExec ["bis_fnc_call",2];
            hint "Übungsbeginn!";
        },
        {
            missionNamespace getVariable ["reddZugSB_Spz_enable", true]
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _ZugSB_Spz_Start] call ace_interact_menu_fnc_addActionToObject;
    
    private _ZugSB_Spz_Ende =
    [
        "ZugSB_Spz_Ende",
        "Übungsende",
        "",
        {
            [] remoteExec ["reddZugSB_fnc_init_ZugSB_Spz",2];
            missionNamespace setVariable ["reddZugSB_Spz_enable", true, true];
            hint "Übungsende, Übungsende!";
        },
        {
            !(missionNamespace getVariable ["reddZugSB_Spz_enable", false])
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _ZugSB_Spz_Ende] call ace_interact_menu_fnc_addActionToObject;
};