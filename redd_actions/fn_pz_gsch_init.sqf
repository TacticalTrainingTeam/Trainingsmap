/*
    author = Reimchen
    edit = Redd
    description = n.a.
*/

if(!isServer) exitWith {};

if(!(missionNamespace getVariable ["reim_parcour_available_kpz_gef", false])) then {

    missionNamespace setVariable ["reim_parcour_available_kpz_gef", true, true];

    // Trigger Parcour
    {
        _x enableSimulationGlobal false;
    } forEach [trigger_target_pz_1, trigger_target_pz_2, trigger_target_pz_3, trigger_target_pz_4, trigger_target_pz_5];

    // Popup runter
    // get all targets
    private _targetArray = nearestObjects [trigger_target_pz_4, ["TargetBase"], 1400];

    // filter targets by wave (variable set in editor) and move down
    {
        if(_x getVariable ["parcour", 2] == 2) then {
            _x animate ["terc",1];
        };
    } foreach _targetArray;
};
