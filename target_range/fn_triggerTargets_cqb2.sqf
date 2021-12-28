

params ["_object","_position", "_rangeNumber", ["_showTarget",false,[true]], ["_radius",300,[0]], ["_variableString","target_range_cqb",[""]]];

//if (!isServer) exitWith {};

// get all targets
private _targetArray = nearestObjects [_position, ["TargetBase"], _radius];

_range_targetArray = [];
{
    if(_x getVariable [_variableString, -1] == _rangeNumber) then 
    {
        _range_targetArray pushBack _x;
    };
}
foreach _targetArray;

// filter targets by wave (variable set in editor)
private _showTargetNumber = if(_showTarget) then { 0 } else { 1 };

_actual_targetArray = [];
for "_i" from 1 to ((count _range_targetArray)/2) do
{
    _actual_target = selectRandom _range_targetArray;
    _actual_targetArray pushBack _actual_target;
};

_counter = 0;

if(_showTarget) then 
{
    {
        if(_x getVariable [_variableString, -1] == _rangeNumber) then {
            [_x,false] remoteExecCall ["hideObjectGlobal", 2];
            _x animate ["terc",_showTargetNumber];
            _counter = _counter+1;
            _evenHandler = _x addeventhandler
            [
                "hitPart",
                {
                    (_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];
                    _target removeEventHandler ["hitPart", 0];
                    _counter = _counter-1;
                }
            ];
        };
    } foreach _actual_targetArray;
}
else
{
    {
        if(_x getVariable [_variableString, -1] == _rangeNumber) then 
        {
            [_x,true] remoteExecCall ["hideObjectGlobal", 2];
            _x animate ["terc",_showTargetNumber];
            _x removeEventHandler ["hitPart", 0];
        };
    } foreach _targetArray;

    _counter = 0;
};

waitUntil{_counter==0};

{
    if(_x getVariable [_variableString, -1] == _rangeNumber) then 
    {
        [_x,true] remoteExecCall ["hideObjectGlobal", 2];
        _x animate ["terc",_showTargetNumber];
        _x removeEventHandler ["hitPart", 0];
    };
} foreach _targetArray;

_object setVariable ["target_range_isUp_cqb", false, true];
sleep 2;
hint "Übungsende, Übungsende.";
