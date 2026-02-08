//if (!isServer) exitWith {};

params ["_object","_position", "_rangeNumber", ["_showTarget",false,[true]], ["_radius",650,[0]], ["_variableString","target_range",[""]] ];

_init = true;

// get all targets
private _targetArray = nearestObjects [_position, ["TargetBase"], _radius];
_actual_target_array = [];

// filter targets by wave (variable set in editor)
private _showTargetNumber = if(_showTarget) then { 0 } else { 1 };
{
    if(_x getVariable [_variableString, -1] == _rangeNumber) then {
        _actual_target_array pushBack _x;
    };
} foreach _targetArray;

sleep 5;

for "_i" from 1 to 10 do
{
    _target = selectRandom _actual_target_array;

    sleep 5;
    
    if (_init) then {hint "Übungsbeginn!";_init=false;};

    [_target,_i,_object] spawn
    {
        params ["_target","_i","_object"];

        //if !(_object  getVariable ["target_range_isUp_inf_ssch", false]) exitWith {};
        if (_object  getVariable ["target_range_abort_inf_ssch", false]) exitWith {};
        
        _target animate ["terc",0];
        _endTime = time+7;
        _timeout = false;

        waituntil 
        {
            sleep 1;
            _timeout = time >= _endTime;
            _timeout or _target animationPhase "terc" == 1;
        };

        if (_timeout) then
        {
            if (_object  getVariable ["target_range_abort_inf_ssch", false]) exitWith {};
            _target animate ["terc",1];
            if (_i<10) then {hint format ["Ziel %1 , Zeit abgelaufen", _i]} 
            else {hint format ["Ziel %1 , Zeit abgelaufen", _i];sleep 2;hint "Übungsende, Übungsende!";};
        }
        else
        {
            if (_object  getVariable ["target_range_abort_inf_ssch", false]) exitWith {};
            if (_i<10) then {hint format ["Ziel %1 vernichtet", _i]}
            else {hint format ["Ziel %1 vernichtet", _i];sleep 2;hint "Übungsende, Übungsende!";};
        };

    };

    //if !(_object  getVariable ["target_range_isUp_inf_ssch", false]) exitWith {};
    if (_object  getVariable ["target_range_abort_inf_ssch", false]) exitWith {_target animate ["terc",1]};

    sleep 3;
    waitUntil {_target animationPhase "terc" == 1};

};

_object setVariable ["target_range_isUp_inf_ssch", false, true];
