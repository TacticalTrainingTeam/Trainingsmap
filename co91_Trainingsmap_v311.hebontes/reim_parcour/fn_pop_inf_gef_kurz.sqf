/*
	author = Reimchen
    edit = Redd
	description = n.a.
*/

if (!isServer) exitWith {};

params ["_currentTrigger", "_nextTrigger", "_wave","_radius"];

// Trigger an/aus
_currentTrigger enableSimulationGlobal false;
_nextTrigger enableSimulationGlobal true;

// get all targets
private _targetArray = nearestObjects [_nextTrigger, ["TargetBase"], _radius];
_actual_targetArray = [];
{

    if (_x getVariable ["parcour_1",-1] == _wave) then
    { 
        _actual_targetArray pushBack _x;
    };

}
foreach _targetArray;
_script_handle = [_actual_targetArray] spawn 
{
    // pop targets up
    params ["_actual_targetArray"];

    private ["_selectedTarget"];

    for "_i" from 1 to (count _actual_targetArray) do 
    {
        sleep random 5;
        _selectedTarget = selectRandom _actual_targetArray;
        _selectedTarget animate ["terc",0];
        _actual_targetArray = _actual_targetArray - [_selectedTarget];
    };

};
