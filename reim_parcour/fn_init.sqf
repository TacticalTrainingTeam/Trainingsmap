if(!isServer) exitWith {};

if(!(missionNamespace getVariable ["reim_parcour_available", false])) then {

    missionNamespace setVariable ["reim_parcour_available", true, true];

    // Trigger Parcour
    {
        _x enableSimulationGlobal false;
    } forEach [trigger_target_b_1, trigger_target_b_2, trigger_target_b_3];

    // Popup runter
    // get all targets
    private _targetArray = nearestObjects [trigger_target_b_2, ["TargetBase"], 300];

    // filter targets by wave (variable set in editor) and move down
    {
        if(_x getVariable ["parcour_wave", -1] != -1) then {
            _x animate ["terc",1];
        };
    } foreach _targetArray;
};
