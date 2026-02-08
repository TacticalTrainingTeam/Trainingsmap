

if (isServer) then 
{
    params ["_currentTrigger"];

    _currentTrigger enableSimulationGlobal false;
    _targetArray = nearestObjects [(getMarkerPos "spzCQB"), ["TargetBase"], 300];
    _actualTargetArray = [];

    for "_i" from 0 to 20 do
    {
        _actualTarget = selectRandom _targetArray;
        _actualTargetArray pushBack _actualTarget;
        _targetArray = _targetArray - [_actualTarget];
    };
    
    {
        [_x,true] remoteExecCall ["hideObjectGlobal", 2];
    } 
    forEach _targetArray;

    {
        _x animate ["terc",0];
    } 
    forEach _actualTargetArray;
};

