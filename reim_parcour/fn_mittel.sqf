/*
	author = Reimchen
	description = n.a.
*/

if (!isServer) exitWith {};

params ["_currentTrigger", "_nextTrigger", "_waveNumber"];

// Trigger an/aus
_currentTrigger enableSimulationGlobal false;
_nextTrigger enableSimulationGlobal true;

// get all targets
private _targetArray = nearestObjects [_nextTrigger, ["TargetBase"], 150];

// filter targets by wave (variable set in editor)
private _targetArrayOfWave = [];
{
    if(_x getVariable ["parcour_wave", -1] == _waveNumber) then {
        _targetArrayOfWave pushBack _x;
    };
} foreach _targetArray;

// do not activate all targets - ignore 1 to 7 ones
private ["_selectedTarget"];
for "_i" from 0 to ((count _targetArrayOfWave) - floor(random(6)) + 1) do {
    _selectedTarget = selectRandom _targetArrayOfWave;
    _selectedTarget animate ["terc",0];
    _targetArrayOfWave = _targetArrayOfWave - [_selectedTarget];
};

/*
{
    _x animate ["terc",0];
} forEach [
    target_b_19,
    target_b_20,
    target_b_21,
    target_b_22,
    target_b_23,
    target_b_25,
    target_b_26,
    target_b_29,
    target_b_31,
    target_b_33,
    target_b_34,
    target_b_35,
    target_b_36,
    target_b_38,
    target_b_39,
    target_b_40
];
*/
