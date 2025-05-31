
if (hasInterface) then 
{
    params ["_object"];

	private _ZugSB_Kpz_Start =
    [
        "ZugSB_Kpz_Start",
        "Übungsbeginn",
        "",
        {
            {
                reddZugSB_Kpz_0 enableSimulationGlobal true;
                missionNamespace setVariable ["reddZugSB_Kpz_enable", false, true];
            } remoteExec ["bis_fnc_call",2];
            hint "Übungsbeginn!";
        },
        {
            missionNamespace getVariable ["reddZugSB_Kpz_enable", true]
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _ZugSB_Kpz_Start] call ace_interact_menu_fnc_addActionToObject;
    
    private _ZugSB_Kpz_Ende =
    [
        "ZugSB_Kpz_Ende",
        "Übungsende",
        "",
        {
            [] remoteExec ["reddZugSB_fnc_init_ZugSB_Kpz",2];
            missionNamespace setVariable ["reddZugSB_Kpz_enable", true, true];
            hint "Übungsende, Übungsende!";
        },
        {
            !(missionNamespace getVariable ["reddZugSB_Kpz_enable", false])
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _ZugSB_Kpz_Ende] call ace_interact_menu_fnc_addActionToObject;
};