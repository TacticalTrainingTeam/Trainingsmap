
/*
    author = Reimchen
    edit: Redd
	description = n.a.
*/

if (hasInterface) then {
    params ["_object"];

    private _actionParcourStart =
    [
        "Reim_kpz_parcour_start",
        "Übungsbeginn",
        "",
        {
            {
                trigger_target_pz_1 enableSimulationGlobal true;
                missionNamespace setVariable ["reim_parcour_available_kpz_gef", false, true];
            } remoteExec ["bis_fnc_call",2];
            hint "KPz/SPz Gefechtsschießbahn freigegeben\n Übungsbeginn!";
        },
        {
            missionNamespace getVariable ["reim_parcour_available_kpz_gef", true]
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionParcourStart] call ace_interact_menu_fnc_addActionToObject;
    
    private _actionParcourAbort =
    [
        "Reim_kpz_parcour_abort",
        "Übungsende",
        "",
        {
            [] remoteExec ["Redd_fnc_init_kpz_gsch",2];
            hint "Übungsende, Übungsende!";
            missionNamespace setVariable ["reim_parcour_available_kpz_gef", true, true];
        },
        {
            !(missionNamespace getVariable ["reim_parcour_available_kpz_gef", false])
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionParcourAbort] call ace_interact_menu_fnc_addActionToObject;
};