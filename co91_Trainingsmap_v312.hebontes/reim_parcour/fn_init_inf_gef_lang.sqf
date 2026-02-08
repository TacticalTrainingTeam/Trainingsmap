/*
    author = Reimchen
    edit = Redd
    description = n.a.
*/

if(!isServer) exitWith {};

if(!(missionNamespace getVariable ["reim_parcour_available_inf_gef_lang", false])) then {

    missionNamespace setVariable ["reim_parcour_available_inf_gef_lang", true, true];

    // Trigger Parcour
    {
        _x enableSimulationGlobal false;
    } forEach [trigger_target_l_1, trigger_target_l_2, trigger_target_l_3, trigger_target_l_4, trigger_target_l_5, trigger_target_l_6];

    // Popup runter
    // get all targets
    private _targetArray = nearestObjects [trigger_target_l_3, ["TargetBase"], 300];

    // filter targets by wave (variable set in editor) and move down
    {
        if(_x getVariable ["parcour", 0] == 0) then {
            _x animate ["terc",1];
        };
    } foreach _targetArray;
};
