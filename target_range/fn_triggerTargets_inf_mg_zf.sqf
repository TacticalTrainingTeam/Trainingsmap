

params ["_object","_position", "_rangeNumber", ["_showTarget",false,[true]], ["_radius",650,[0]], ["_variableString","target_range",[""]]];

//if (!isServer) exitWith {};

// get all targets
private _targetArray = nearestObjects [_position, ["TargetBase"], _radius];
// filter targets by wave (variable set in editor)
counter = 12; //Hardcoded number of targets
private _showTargetNumber = if(_showTarget) then { 0 } else { 1 };
{
    if(_x getVariable [_variableString, -1] == _rangeNumber) then {
        _x animate ["terc",_showTargetNumber];
        _evenHandler = _x addeventhandler
        [
            "hitPart",
            {
                (_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];
                _target removeEventHandler ["hitPart", 0];
                counter = counter-1;
            }
        ];
    };
} foreach _targetArray;

waitUntil{counter==0};

_object setVariable ["target_range_isUp_mg_zf", false, true];
sleep 2;
hint "Übungsende, Übungsende.";
