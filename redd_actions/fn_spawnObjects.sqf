#include "const.hpp"

params ["_object", "_type", "_distance", "_movement"];

private ["_classname", "_spawnMarker", "_spawnDirection"];
_spawnDirection = random 360;

// select random classname for given type
switch (_type) do {
    case TYPE_LIGHT : {
        _classname = selectRandom [
            "O_APC_Tracked_02_cannon_F",
            "O_APC_Tracked_02_AA_F",
            "O_MRAP_02_F",
            "O_MRAP_02_hmg_F",
            "O_APC_Wheeled_02_rcws_F",
            "I_APC_tracked_03_cannon_F",
            "I_MRAP_03_F",
            "I_MRAP_03_hmg_F"
        ];
    };
    case TYPE_ARMORED : {
        _classname = selectRandom [
            "O_MBT_02_cannon_F",
            "I_MBT_03_cannon_F",
            "I_MBT_03_cannon_F"
        ];
    };
    // TYPE_INFANTRY
    default {
        _classname = selectRandom [
            "O_G_Offroad_01_F",
            "O_G_Offroad_01_armed_F",
            "O_Truck_02_covered_F",
            "O_Truck_02_transport_F",
            "O_Truck_03_covered_F",
            "O_Truck_03_transport_F"
        ];
    };
};

// select marker for spawn position for given distance
switch (_distance) do {
    case DISTANCE_MEDIUM : {
        _spawnMarker = selectRandom [
            "Redd_Panzer_spawn_mittel",
            "Redd_Panzer_spawn_mittel_1",
            "Redd_Panzer_spawn_mittel_2",
            "Redd_Panzer_spawn_mittel_3",
            "Redd_Panzer_spawn_mittel_4"
        ];
    };
    case DISTANCE_FAR : {
        _spawnMarker = selectRandom [
            "Redd_Panzer_spawn_fern",
            "Redd_Panzer_spawn_fern_1",
            "Redd_Panzer_spawn_fern_2",
            "Redd_Panzer_spawn_fern_3",
            "Redd_Panzer_spawn_fern_4",
            "Redd_Panzer_spawn_fern_5"
        ];
    };
    // DISTANCE_NEAR
    default {
        _spawnMarker = selectRandom [
            "Redd_Panzer_spawn_nah",
            "Redd_Panzer_spawn_nah_1",
            "Redd_Panzer_spawn_nah_2",
            "Redd_Panzer_spawn_nah_3",
            "Redd_Panzer_spawn_nah_4"
        ];
    };
};
	
// spawn objects
private _group = creategroup EAST;
private _spawnPosition = getMarkerPos _spawnMarker;
private _targetVehicle = _classname createVehicle _spawnPosition;
_targetVehicle engineOn true;
_targetVehicle setDir 118;
"O_G_Soldier_lite_F" createUnit [_spawnPosition ,_group];
private _driver = leader _group;
_driver moveInDriver _targetVehicle;
// assign to curator - needs spec_zeus!
[objNull, _targetVehicle] remoteExecCall ["Spec_zeus_fnc_objectPlaced", 2];

// save spawned objects
_object setVariable [SPAWNED_OBJECTS_STRING, [_targetVehicle, _driver]];
// save endposition (default)
private _endPosition = [0,0,0];

switch (_movement) do {
    case MOVEMENT_MOVING : 
    {
        // select random end position
        private _endMarkerArray = 
        [
            "Redd_Panzer_spawn_nah",
            "Redd_Panzer_spawn_nah_4",
            "Redd_Panzer_spawn_mittel",
            "Redd_Panzer_spawn_mittel_4",
            "Redd_Panzer_spawn_fern",
            "Redd_Panzer_spawn_fern_5"
        ];
        _endMarkerArray = _endMarkerArray - [_spawnMarker];     
        _endPosition = getMarkerPos (selectRandom _endMarkerArray);
        private _endWaypoint = _group addWaypoint [_endPosition, 0];
        _endWaypoint setWaypointType "MOVE";
        _targetVehicle limitSpeed 30;
    };
    default {
        _targetVehicle setDir _spawnDirection;
        _targetVehicle forceSpeed 0;
    };
};

// wait for target do be destroyed or leave the area to give feedback
[_object, _targetVehicle, _driver, _endPosition] spawn {
    params ["_object", "_targetVehicle", "_driver", "_endPosition"];
    waitUntil {
        sleep 10;
        !alive _targetVehicle || !alive _driver || vehicle _driver == _driver || _targetVehicle distance _endPosition < 30
    };
    _object setVariable [SPAWNED_OBJECTS_STRING, []];
    _object setVariable [MENU_STRING, MENU_NONE];
    // delete objects - delay for burning vehicle if killed (not at end position)
    if(_targetVehicle distance _endPosition < 30) then {
        hint "Feind ist am Ziel angekommen.";
        deleteVehicle _targetVehicle;
        deleteVehicle _driver;
    } else {
        hint "Feind erfolgreich bekämpft";
        deleteVehicle _driver;
        sleep 90;
        deleteVehicle _targetVehicle;
    };
};