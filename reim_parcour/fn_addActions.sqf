/*
	author = Reimchen
	description = n.a.
*/

if (hasInterface) then {
    params ["_object"];

    private _actionParcourStart =
    [
        "Reim_parcour_start",
        "Parcour starten",
        "",
        {
            {
                trigger_target_b_1 enableSimulationGlobal true;
                missionNamespace setVariable ["reim_parcour_available", false, true];
            } remoteExec ["bis_fnc_call",2];
            hint "Parcour ist aktiv.";
        },
        {
            missionNamespace getVariable ["reim_parcour_available", true]
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionParcourStart] call ace_interact_menu_fnc_addActionToObject;
    
    private _actionParcourAbort =
    [
        "Reim_parcour_abort",
        "Parcour abbrechen",
        "",
        {
            [] remoteExec ["Reim_parcour_fnc_init",2];
            hint "Parcour wurde abgebrochen.";
        },
        {
            !(missionNamespace getVariable ["reim_parcour_available", false])
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionParcourAbort] call ace_interact_menu_fnc_addActionToObject;
};