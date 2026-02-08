/*
    author = Reimchen
    edit = Redd
    description = n.a.
*/

if (!isServer) exitWith {};

params ["_currentTrigger", "_nextTrigger", "_wave","_radius","_ende"];

// Trigger an/aus
_currentTrigger enableSimulationGlobal false;
if (!_ende) then
{

    _nextTrigger enableSimulationGlobal true;

};

// get all targets
private _targetArray = nearestObjects [_nextTrigger, ["TargetBase"], _radius];
_actual_targetArray = [];
{

    if (_x getVariable ["parcour_2",-1] == _wave) then
    { 
        _actual_targetArray pushBack _x;
    };

}
foreach _targetArray;

_script_handle = [_actual_targetArray,_ende] spawn 
{
    // pop targets up
    params ["_actual_targetArray","_ende"];
    private ["_selectedTarget"]; 

    
    if (!_ende) then 
    {
        for "_i" from 1 to (count _actual_targetArray) do 
        {
            sleep 6.5;
            _selectedTarget = selectRandom _actual_targetArray;
            _selectedTarget animate ["terc",0];
            waituntil {sleep 1;_selectedTarget animationPhase "terc" == 1};
            _actual_targetArray = _actual_targetArray - [_selectedTarget];
        };
    }
    else
    {
        sleep 6.5;
        for "_i" from 0 to 3 do 
        {
            _selectedTarget = selectRandom _actual_targetArray;
            _selectedTarget animate ["terc",0];
        };
    };
};