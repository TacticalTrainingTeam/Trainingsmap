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
    target_b_1,
    target_b_2,
    target_b_3,
    target_b_4,
    target_b_5,
    target_b_7,
    target_b_9,
    target_b_11,
    target_b_12,
    target_b_14,
    target_b_17,
    target_b_18
];
*/
