#define MINES 0
#define CHARGES 1
#define IEDS 2
#define LANDVEHICLE 3
#define MINEFIELD 4

#define ALL_ACTIONS 0
#define MINEFIELD_ACTIONS 1
#define VEHICLE_MINE_ACTIONS 2

params ["_object", "_action_type", "_targetMarker", "_multipleTargetMarker"];

// add action to select type of area
private _typeOfAreas = [];

// if we have a large area we can spawn a vehicle or minefield

if(_action_type == ALL_ACTIONS or _action_type == VEHICLE_MINE_ACTIONS) then {
    _typeOfAreas pushBack ["Mines", MINES];
    _typeOfAreas pushBack ["Charges", CHARGES];
    _typeOfAreas pushBack ["IEDs", IEDS];
};

if(_action_type == ALL_ACTIONS) then {
    _typeOfAreas pushBack ["Fahrzeuge", LANDVEHICLE];
    _typeOfAreas pushBack ["Minenfeld", MINEFIELD];
};

if(_action_type == VEHICLE_MINE_ACTIONS) then {
    _typeOfAreas pushBack ["Fahrzeuge", LANDVEHICLE];
};

if(_action_type == MINEFIELD_ACTIONS) then {
    _typeOfAreas pushBack ["Minenfeld", MINEFIELD];
};

// action to select type of eod training
{
    _x params ["_name", "_type"];
    _object addAction [
        format ["Reiter '%1'", _name],
        {
            params ["_target", "_caller", "_id", "_argv"];
            _argv params ["_name", "_type"];
            _target setVariable ["type", _type, true];
            hint format ["Reiter '%1' ausgewählt", _name];
        },
        [_name, _type],
        1.1,false,false,"",
        "(_target getVariable [""type"", -1]) == -1",
        5
    ];
} 
foreach _typeOfAreas;

// abort when type selected or mine spawned
_object addAction ["<t size='1' color='#ff0000'>Abbrechen / Fertig</t>",
    {
        params ["_target", "_caller"];
        private _spawnedObjects = _target getVariable ["spawnedObjects", []];
        _target setVariable ["spawnedObjects", [], true];
        _target setVariable ["type", -1, true];
        {
            deleteVehicle _x;
        } foreach _spawnedObjects;
        hint "Übungsende, Übungsende."
    },
    [],1.2,false,true,"",
    "(_target getVariable [""type"", -1]) != -1",
    5
];

// name and type of object to spawn for each type of eod training
private _mineNameAndTypeArray = [
    ["APERS Bounding Mine", "APERSBoundingMine", MINES],
    ["APERS Mine", "APERSMine", MINES],
    ["APERS Trip Mine", "APERSTripMine", MINES],
    ["AT Mine", "ATMine", MINES],
    ["Claymore", "Claymore_F", MINES],
    ["SLAM Bottom Mine", "ACE_SLAMBottomMine", MINES],
    ["SLAM Directional Mine", "SLAMDirectionalMine", MINES],
    ["Underwater Mine AB", "UnderwaterMineAB", MINES],
    ["Underwater Mine", "UnderwaterMine", MINES],
    
    ["Demo Charge", "DemoCharge_F", CHARGES],
    ["Satchel Charge", "SatchelCharge_F", CHARGES],
    
    ["IED Land Big", "ACE_IEDLandBig_Range", IEDS],
    ["IED Urban Big", "ACE_IEDUrbanBig_Range", IEDS],
    ["IED Land Small", "ACE_IEDLandSmall_Range", IEDS],
    ["IED Urban Small", "ACE_IEDUrbanSmall_Range", IEDS]
];

if(_action_type == ALL_ACTIONS or _action_type == VEHICLE_MINE_ACTIONS) then {
    _mineNameAndTypeArray pushBack ["LKW", "B_Truck_01_mover_F", LANDVEHICLE];
    _mineNameAndTypeArray pushBack ["SPZ", "B_APC_Wheeled_01_cannon_F", LANDVEHICLE];
    _mineNameAndTypeArray pushBack ["Panzer", "B_MBT_01_TUSK_F", LANDVEHICLE];
};

// save spawn area
_object setVariable ["targetMarker", _targetMarker];
{
    _x params ["_name", "_typeOfMine", "_type"];
    _object addAction [
        format ["Spawne '%1'", _name],
        {
            params ["_target", "_caller", "_id", "_argv"];
            _argv params ["_name", "_typeOfMine", "_type"];
            
            private _position = getMarkerPos (_target getVariable ["targetMarker", ""]);
            if( (_position select 0) != 0 && (_position select 1) != 0) then {
                if(_type == LANDVEHICLE) then {
                    private _vehicle = _typeOfMine createVehicle _position;
                    _vehicle setDir 30;
                    _target setVariable ["spawnedObjects", [_vehicle], true];
                } else {
                    private _mine = createMine [_typeOfMine, _position, [], 0];
                    _target setVariable ["spawnedObjects", [_mine], true];
                };
                hint format ["%1 erstellt.", _name];
            };
        },
        [_name, _typeOfMine, _type],
        1.1,false,true,"",
        format ["(_target getVariable [""type"",-1] == %1) && ((count (_target getVariable [""spawnedObjects"", []])) == 0)", _type],
        5
    ];
} foreach _mineNameAndTypeArray;

// if we have a large area we can spawn a minefield
if(_action_type == ALL_ACTIONS or _action_type == MINEFIELD_ACTIONS) then {
    // hard code multiple markers because currently only one mine field is used (and this is easier to read than in call)
    _multipleTargetMarker = [
        "spawn_pionierplatz_2",
        "spawn_pionierplatz_3",
        "spawn_pionierplatz_4",
        "spawn_pionierplatz_5",
        "spawn_pionierplatz_6",
        "spawn_pionierplatz_7", 
        "spawn_pionierplatz_8", 
        "spawn_pionierplatz_9", 
        "spawn_pionierplatz_10", 
        "spawn_pionierplatz_11"
    ];
    private _minefieldNameAndTypesArray = [
        ["Minenfeld AP-Mine", ["APERSBoundingMine"]],
        ["Minenfeld AT-Mine", ["ATMine"]],
        ["Minenfeld AP- u. AT-Mine", ["APERSBoundingMine", "ATMine"]]
    ];
    {
        _x params ["_name", "_minefieldTypes"];
        _object addAction [
            _name,
            {
                params ["_target", "_caller", "_id", "_argv"];
                _argv params ["_name", "_minefieldTypes", "_multipleTargetMarker"];
                private _spawnedObjects = [];
                {
                    private _mine = createMine [selectRandom _minefieldTypes, getMarkerPos _x, [], 0];
                    _spawnedObjects pushBack _mine;
                } foreach _multipleTargetMarker;
                _target setVariable ["spawnedObjects", _spawnedObjects, true];
                hint format ["'%1' erstellt.", _name];
            },
            [_name, _minefieldTypes, _multipleTargetMarker],
            1.1,false,true,"",
            format ["(_target getVariable [""type"",-1] == %1) && ((count (_target getVariable [""spawnedObjects"", []])) == 0)", MINEFIELD],
            5
        ];
    } foreach _minefieldNameAndTypesArray;
};