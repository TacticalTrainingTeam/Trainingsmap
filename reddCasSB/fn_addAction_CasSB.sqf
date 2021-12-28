
if (hasInterface) then 
{
    params ["_object"];

	private _reddCasSB_Start =
    [
        "reddCasSB_Start",
        "Übungsbeginn",
        "",
        {
            {
                reddCasSB_0 enableSimulationGlobal true;
                missionNamespace setVariable ["reddCasSB_enable", false, true];
            } remoteExec ["bis_fnc_call",2];
            hint "Übungsbeginn!";
        },
        {
            missionNamespace getVariable ["reddCasSB_enable", true]
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _reddCasSB_Start] call ace_interact_menu_fnc_addActionToObject;
    
    private _reddCasSB_Ende =
    [
        "reddCasSB_Ende",
        "Übungsende",
        "",
        {
            [] remoteExec ["reddCasSB_fnc_init_CasSB",2];
            missionNamespace setVariable ["reddCasSB_enable", true, true];
            hint "Übungsende, Übungsende!";
        },
        {
            !(missionNamespace getVariable ["reddCasSB_enable", false])
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _reddCasSB_Ende] call ace_interact_menu_fnc_addActionToObject;
};