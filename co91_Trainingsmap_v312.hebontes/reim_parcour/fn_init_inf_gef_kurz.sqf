/*
    author = Reimchen
    edit = Redd
    description = n.a.
*/

if(!isServer) exitWith {};

if(!(missionNamespace getVariable ["reim_parcour_available_inf_gef_kurz", false])) then {

    missionNamespace setVariable ["reim_parcour_available_inf_gef_kurz", true, true];

    // Trigger Parcour
    {
        _x enableSimulationGlobal false;
    } forEach [trigger_target_k_1, trigger_target_k_2, trigger_target_k_3, trigger_target_k_4];

    // Popup runter
    // get all targets
    private _targetArray = nearestObjects [trigger_target_k_2, ["TargetBase"], 150];

    // filter targets by wave (variable set in editor) and move down
    {
        if(_x getVariable ["parcour", 1] == 1) then {
            _x animate ["terc",1];
        };
    } foreach _targetArray;
};
