if(!isServer) exitWith {};

params [ ["_variablePrefix","cqb_a",[""]] ];

// hide marker
private _spawnedMarker = missionNamespace getVariable [format ["%1_marker", _variablePrefix],[]];

{
    _x hideObjectGlobal true;
} foreach _spawnedMarker;

// clear old group if exists
private _groupUnits = missionNamespace getVariable [format ["%1_group", _variablePrefix], objNull];
if(_groupUnits isEqualType []) then {
    {
        deleteVehicle _x;
    } foreach _groupUnits;
};
missionNamespace setVariable [format ["%1_group", _variablePrefix], objNull];

// hide targets
private _spawnedTargets = missionNamespace getVariable [format ["%1_targets", _variablePrefix],[]];
{
    _x hideObjectGlobal true;
} foreach _spawnedTargets;