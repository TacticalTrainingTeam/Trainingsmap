/*
	author = Reimchen
    edit: Redd
	description = n.a.
*/

if (hasInterface) then {
    params ["_object"];

    private _actionParcourStart =
    [
        "Reim_parcour_start",
        "Übungsbeginn",
        "",
        {
            {
                trigger_target_l_1 enableSimulationGlobal true;
                missionNamespace setVariable ["reim_parcour_available_inf_gef_lang", false, true];
            } remoteExec ["bis_fnc_call",2];
            hint "Übungsbeginn!";
        },
        {
            missionNamespace getVariable ["reim_parcour_available_inf_gef_lang", true]
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionParcourStart] call ace_interact_menu_fnc_addActionToObject;
    
    private _actionParcourAbort =
    [
        "Reim_parcour_abort",
        "Übungsende",
        "",
        {
            [] remoteExec ["Reim_parcour_fnc_init_inf_gef_lang",2];
            missionNamespace setVariable ["reim_parcour_available_inf_gef_lang", true, true];
            hint "Übungsende, Übungsende!";
        },
        {
            !(missionNamespace getVariable ["reim_parcour_available_inf_gef_lang", false])
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionParcourAbort] call ace_interact_menu_fnc_addActionToObject;
};