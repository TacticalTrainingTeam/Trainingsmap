if (!isServer) exitWith {};

params ["_position", "_rangeNumber", ["_showTarget",true,[true]], ["_radius",250,[0]], ["_variableString","target_range",[""]] ];

// get all targets
private _targetArray = nearestObjects [_position, ["TargetBase"], _radius];

// filter targets by wave (variable set in editor)
private _showTargetNumber = if(_showTarget) then { 0 } else { 1 };
private _targetArrayOfWave = [];
{
    if(_x getVariable [_variableString, -1] == _rangeNumber) then {
        _x animate ["terc",_showTargetNumber];
    };
} foreach _targetArray;
