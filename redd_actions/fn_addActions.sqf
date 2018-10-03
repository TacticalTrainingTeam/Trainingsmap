#include "const.hpp"

if(hasInterface) then {

params ["_player"];

private _actionIndices = [];

// abort
private _actionIndex = _player addAction [
    "<t size='1' color='#ff0000'>Abbruch</t>",
    { 
        params ["_target", "_caller"];
        _caller setVariable [MENU_STRING, MENU_NONE];
        private _spawnedObjects = _caller getVariable [SPAWNED_OBJECTS_STRING, []];
        {
            deleteVehicle _x;
        } foreach _spawnedObjects;
        _caller setVariable [SPAWNED_OBJECTS_STRING, []];
    },
    [], 1.5, false, true, "",
    format ["_this getVariable [""%1"", %2] != %2", MENU_STRING, MENU_NONE]
];
_actionIndices pushBack _actionIndex;

// type
private _typeArray = [
    ["<t size='1' color='#579D1C'>Weiches Ziel</t>", TYPE_INFANTRY],
    ["<t size='1' color='#FF950E'>Halbhartes Ziel</t>", TYPE_LIGHT],
    ["<t size='1' color='#EE0000'>Hartes Ziel</t>", TYPE_ARMORED]
];

{
    _x params ["_name", "_type"];
    _actionIndex = _player addAction [
        _name,
        {
            params ["_target", "_caller", "_id", "_argv"];
            _argv params ["_type"];
            _caller setVariable [TYPE_STRING, _type];
            _caller setVariable [MENU_STRING, MENU_TYPE];
        },
        [_type], 1.5, false, false, "",
        format ["_this getVariable [""%1"", %2] == %2", MENU_STRING, MENU_NONE]
    ];
    _actionIndices pushBack _actionIndex;
} foreach _typeArray;

// distance
private _distanceArray = [
    ["<t size='1' color='#579D1C'>Entfernung: nah</t>", DISTANCE_NEAR],
    ["<t size='1' color='#FF950E'>Entfernung: mittel</t>", DISTANCE_MEDIUM],
    ["<t size='1' color='#EE0000'>Entfernung: fern</t>", DISTANCE_FAR]
];

{
    _x params ["_name", "_distance"];
    _actionIndex = _player addAction [
        _name,
        {
            params ["_target", "_caller", "_id", "_argv"];
            _argv params ["_distance"];
            _caller setVariable [DISTANCE_STRING, _distance];
            _caller setVariable [MENU_STRING, MENU_DISTANCE];
        },
        [_distance], 1.5, false, false, "",
        format ["_this getVariable [""%1"", %2] == %3", MENU_STRING, MENU_NONE, MENU_TYPE]
    ];
    _actionIndices pushBack _actionIndex;
} foreach _distanceArray;

// movement
private _movementArray = [
    ["<t size='1' color='#579D1C'>Statisches Ziel</t>", MOVEMENT_STATIC],
    ["<t size='1' color='#EE0000'>Bewegliches Ziel</t>", MOVEMENT_MOVING]
];

{
    _x params ["_name", "_movement"];
    _actionIndex = _player addAction [
        _name,
        {
            params ["_target", "_caller", "_id", "_argv"];
            _argv params ["_movement"];
            _caller setVariable [MOVEMENT_STRING, _movement];
            _caller setVariable [MENU_STRING, MENU_MOVEMENT];
            // get other configuration and spawn objects
            private _type = _caller getVariable [TYPE_STRING, TYPE_INFANTRY];
            private _distance = _caller getVariable [DISTANCE_STRING, DISTANCE_NEAR];
            [_caller, _type, _distance, _movement] call Redd_fnc_spawnObjects;
        },
        [_movement], 1.5, false, true, "",
        format ["_this getVariable [""%1"", %2] == %3", MENU_STRING, MENU_NONE, MENU_DISTANCE]
    ];
    _actionIndices pushBack _actionIndex;
} foreach _movementArray;

_player setVariable [ACTION_INDICES_STRING, _actionIndices];

};