    #include "const.hpp"

    params ["_caller","_radius","_spawn_point_array"];

    _aa_marker = selectRandom ["aa_marker_1","aa_marker_2","aa_marker_3"];
    _pos = getMarkerPos _aa_marker;

    _grp = createGroup east;
    _new_spawn_point = selectRandom _spawn_point_array;
    _height = selectRandom [200,300,400];
    _aircraft = createVehicle ["O_UAV_02_CAS_F", _new_spawn_point, [], _height, "FLY"];
    _pilot = createVehicleCrew _aircraft;
    [_aircraft] join _grp;
    _aircraft setVehicleAmmo 0;
    _aircraft flyInHeight _height;

    _caller setVariable [SPAWNED_OBJECTS_STRING_3, [_aircraft]]; 

    //Add waypoint on position where triggering unit entered the trigger
    _wp_1 = _grp addWaypoint [_pos, 0];
    _wp_1 setWaypointType "MOVE";
    _wp_1 setWaypointBehaviour "CARELESS";
    _wp_1 setWaypointCombatMode "BLUE";
    _wp_1 setWaypointTimeout [0, 0, 0];
    _wp_1 setWaypointCompletionRadius 100;

    //Set random number of waypoint to patrol
    _waypointCount = floor random [1,2,3];

    //Set patrol waypoint
    for "_i" from 1 to _waypointCount do 
    {
    
        [_pos,_grp,_radius,50,"COMBAT"] call Redd_fnc_aa_CreateWP;

    };

    //At least set "CYCLE" waypoint so units dont stop at last waypoint
    _pos = getMarkerPos _aa_marker;
    _wp_2 = _grp addWaypoint [_pos, _waypointCount+1];
    _wp_2 setWaypointType "CYCLE";
    _wp_2 setWaypointBehaviour "COMBAT";
    _wp_2 setWaypointCombatMode "RED";
    _wp_2 setWaypointTimeout [0, 0, 0];
    _wp_2 setWaypointCompletionRadius 50;

    // wait for target do be destroyed
    [_caller, _aircraft] spawn 
    {
        params ["_caller", "_aircraft"];
        waitUntil 
        {
            sleep 10;
            !alive _aircraft or (_caller getVariable [AA_START_ABORT,false]);
        };
        
        if !((_caller getVariable [AA_START_ABORT,false])) then
        {
            _caller setVariable [SPAWNED_OBJECTS_STRING_3, []];
            _caller setVariable [MENU_STRING_3, MENU_AA_START];
            hint "Ziel vernichtet!\nÜbungsende, Übungsende!";
        };
        sleep 90;
        // delete objects
        {deleteVehicle _x;}forEach crew _aircraft;
        deleteVehicle _aircraft;
    };

    true