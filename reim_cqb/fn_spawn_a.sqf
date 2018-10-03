if(!isServer) exitWith {};

_this spawn {

params [ ["_spawnAI",false,[true]] ];

private _variablePrefix = "cqb_a";

// spawn marker to visualize the cqb parcoour
private _spawnedMarker = missionNamespace getVariable [format ["%1_marker", _variablePrefix],[]];

// only spawn once and toggle visibility
if (count _spawnedMarker == 0) then {
    private _arrowSpawnArray = [
        ["Sign_Arrow_Direction_Green_F", [16218.5,17343.9,5], 120.098],
        ["Sign_Arrow_Direction_Green_F", [16251.7,17324.7,5], 121.128],
        ["Sign_Arrow_Direction_Green_F", [16305.7,17299.2,5], 208.502],
        ["Sign_Arrow_Direction_Green_F", [16281.1,17268.2,5], 120.392],
        ["Sign_Arrow_Direction_Green_F", [16344.8,17239.9,5], 24.353],
        ["Sign_Arrow_Direction_Green_F", [16351,17280.2,5], 113.727],
        ["Sign_Arrow_Direction_Green_F", [16434.4,17234.2,5], 103.771],
        ["Sign_Arrow_Direction_Green_F", [16468.3,17247.3,5], 122.292],
        ["Sign_Arrow_Direction_Green_F", [16502.1,17230.5,5], 144.582],
        ["Sign_Arrow_Large_Green_F", [16241.9,17364.3,10], 0],
        ["Sign_Arrow_Large_Green_F", [16262.6,17340.1,10], 0],
        ["Sign_Arrow_Large_Green_F", [16278.4,17357.9,10], 0],
        ["Sign_Arrow_Large_Green_F", [16295.9,17343.7,10], 0],
        ["Sign_Arrow_Large_Green_F", [16307.1,17336.3,10], 0],
        ["Sign_Arrow_Large_Green_F", [16306.6,17313.8,10], 0],
        ["Sign_Arrow_Large_Green_F", [16306.8,17287.6,10], 0],
        ["Sign_Arrow_Large_Green_F", [16304.9,17269.8,10], 0],
        ["Sign_Arrow_Large_Green_F", [16287.8,17259.2,10], 0],
        ["Sign_Arrow_Large_Green_F", [16286.7,17235.1,10], 0],
        ["Sign_Arrow_Large_Green_F", [16317.2,17280.7,10], 0],
        ["Sign_Arrow_Large_Green_F", [16310.1,17246.7,10], 0],
        ["Sign_Arrow_Large_Green_F", [16327.5,17275.3,10], 0],
        ["Sign_Arrow_Large_Green_F", [16321.7,17241.8,10], 0],
        ["Sign_Arrow_Large_Green_F", [16342.1,17270.5,10], 0],
        ["Sign_Arrow_Large_Green_F", [16328.9,17238.6,10], 0],
        ["Sign_Arrow_Large_Green_F", [16360.9,17260.2,10], 0],
        ["Sign_Arrow_Large_Green_F", [16374.8,17251.8,10], 0],
        ["Sign_Arrow_Large_Green_F", [16380.7,17273.8,10], 0],
        ["Sign_Arrow_Large_Green_F", [16394.7,17296,10], 0],
        ["Sign_Arrow_Large_Green_F", [16405,17292.5,10], 0],
        ["Sign_Arrow_Large_Green_F", [16396.7,17270.6,10], 0],
        ["Sign_Arrow_Large_Green_F", [16393.9,17244.6,10], 0],
        ["Sign_Arrow_Large_Green_F", [16403.3,17264.2,10], 0],
        ["Sign_Arrow_Large_Green_F", [16402.3,17242.2,10], 0],
        ["Sign_Arrow_Large_Green_F", [16412,17262,10], 0],
        ["Sign_Arrow_Large_Green_F", [16437.1,17255.3,10], 0],
        ["Sign_Arrow_Large_Green_F", [16413.4,17237.7,10], 0],
        ["Sign_Arrow_Large_Green_F", [16437.6,17215.2,10], 0],
        ["Sign_Arrow_Large_Green_F", [16450,17216.2,10], 0],
        ["Sign_Arrow_Large_Green_F", [16460.8,17215,10], 0],
        ["Sign_Arrow_Large_Green_F", [16471.7,17210.8,10], 0],
        ["Sign_Arrow_Large_Green_F", [16477.1,17223.1,10], 0],
        ["Sign_Arrow_Large_Green_F", [16482.7,17242.4,10], 0],
        ["Sign_Arrow_Large_Green_F", [16493.7,17240.8,10], 0],
        ["Sign_Arrow_Large_Green_F", [16509.8,17239.3,10], 0],
        ["Sign_Arrow_Large_Green_F", [16517.7,17219.7,10], 0],
        ["Sign_Arrow_Large_Green_F", [16500.4,17204.3,10], 0],
        ["Sign_Arrow_Large_Green_F", [16527.4,17205.3,10], 0]
    ];

    private ["_marker"];
    {
        _x params ["_type", "_position", "_direction"];
        _marker = _type createVehicle [0,0,0];
        _marker setDir _direction;
        _marker setPosATL _position;
        _spawnedMarker pushBack _marker;
        sleep 0.1;
    } foreach _arrowSpawnArray;
    
    missionNamespace setVariable [format ["%1_marker", _variablePrefix], _spawnedMarker];
};

{
    _x hideObjectGlobal false;
} foreach _spawnedMarker;

// unit or target spawn
private _positionAndDirectionArray = [
    [[16238.9,17367.5,0.845846], 153.635],
    [[16246.6,17366.8,0.165726], 207.927],
    [[16261.9,17341.1,0.170546], 180.170546],
    [[16274,17362.8,0.307838], 156.946],
    [[16308.6,17339.7,0.40225], 326.904],
    [[16306,17333.3,0.412064], 211.248],
    [[16307.8,17316.8,0.285208], 312.117],
    [[16311.5,17314.6,0.36669], 207.927],
    [[16303.8,17283.2,4.3168], 209.190],
    [[16316,17279.7,3.85702], 333.530],
    [[16321.8,17281.5,0.343424], 225.582],
    [[16305.6,17267.1,0.315002], 322.802],
    [[16285.2,17232.5,0.32757], 15.027],
    [[16313.9,17224.6,0], 318.477],
    [[16339.8,17267.1,0.49996], 40.4],
    [[16334.4,17248.9,0], 294.182],
    [[16324.1,17243.8,0.35602], 182.77],
    [[16326.5,17237.5,0.731316], 108.1],
    [[16359.5,17282.1,0], 200.946],
    [[16401.2,17295,0.184475], 158.894],
    [[16397.1,17266.5,0.277634], 193.44],
    [[16365.9,17256.5,0.411228], 316.079],
    [[16370.6,17256.9,3.709], 177.003],
    [[16378.9,17247.9,4.02895], 308.34],
    [[16389.9,17246.6,0.383894], 148.244],
    [[16402.5,17237.6,4.50505], 286.06],
    [[16409.5,17242.5,3.71225], 10.168],
    [[16419.7,17239.5,3.7941], 11.081],
    [[16433.3,17254.3,0.376869], 97.419],
    [[16436.4,17219.4,0.174093], 8.439],
    [[16448.4,17220.5,3.79876], 178.2],
    [[16448.7,17215.6,0.516523], 330.084],
    [[16453.8,17218.6,0.459946], 183.444],
    [[16484.5,17247.1,0.289904], 226.265],
    [[16489.9,17241.7,4.0284], 97.204],
    [[16495.9,17243.9,0.641926], 294.222],
    [[16475,17221.8,0.358799], 3.163],
    [[16477.6,17220.6,0.484579], 82.891],
    [[16519.3,17222.7,0.180649], 249.9],
    [[16493.8,17207.5,0.214706], 54.488],
    [[16520.3,17214.9,4.26003], 242.026],
    [[16526.1,17203.4,3.30656], 42.879],
    [[16501.2,17205.3,0.561157], 166.795],
    [[16497.9,17200.7,4.58677], 20.74]
];

// spawn ai or targets
if(_spawnAI) then {

    // clear old group if exists
    private _group = missionNamespace getVariable [format ["%1_group", _variablePrefix], objNull];
    if(!isNull _group) then {
        {
            deleteVehicle _x;
        } foreach units _group;
    };

    // create group
    _group = createGroup EAST;
    
    // spawn units
    {
        _x params ["_position", "_direction"];
        "I_C_Soldier_Bandit_4_F" createUnit [_position, _group, format ["this disableAI 'MOVE'; this forceSpeed 0; this setDir %1; this setUnitPos 'UP';", _direction], 0.4, "corporal"];
        sleep 0.1;
    } foreach _positionAndDirectionArray;
    missionNamespace setVariable [format ["%1_group", _variablePrefix], units _group];
    
    // assign units to curators - spec_zeus needed
    [objNull, _group] call Spec_zeus_fnc_groupPlaced;
} else {

    // spawn targets only once and toggle visibility
    private _spawnedTargets = missionNamespace getVariable [format ["%1_targets", _variablePrefix],[]];

    if (count _spawnedTargets == 0) then {
        private ["_target"];
        {
            if(random(1) < 0.75) then {
                _x params ["_position", "_direction"];
                _target = "TargetP_Inf4_F" createVehicle [0,0,0];
                // the direction is for units - turn around or the targets are facing the wrong way
                _target setDir _direction + 180;
                _target setPosATL _position;
                _target disableAI "MOVE";
                _spawnedTargets pushBack _target;
                sleep 0.1;
            };
        } foreach _positionAndDirectionArray;
        
        missionNamespace setVariable [format ["%1_targets", _variablePrefix], _spawnedTargets];
    };

    {
        _x hideObjectGlobal false;
        _x animate ["terc", 0];
    } foreach _spawnedTargets;
};

};
