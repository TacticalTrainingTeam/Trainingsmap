

/*
    author = Redd
    description = n.a.
*/

if(!isServer) exitWith {};

// Popup runter
// get all targets
private _targetArray = nearestObjects [center_target_panzer_schulschiessen, ["TargetBase"], 450];

// filter targets by wave (variable set in editor) and move down
{

    _x animate ["terc",1];

} foreach _targetArray;

private _targetArray_2 = nearestObjects [center_target_at_schulschiessen, ["TargetBase"], 250];

// filter targets by wave (variable set in editor) and move down
{

    _x animate ["terc",1];

} foreach _targetArray_2;