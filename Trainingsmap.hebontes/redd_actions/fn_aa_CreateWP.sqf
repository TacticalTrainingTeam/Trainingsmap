

	params ["_center","_grp","_radius","_cRadius","_combatMode"];

	//Calc random position in given radius
	_pos = [(_center select 0) - _radius + (2 * random _radius),(_center select 1) - _radius + (2 * random _radius),0];

	//Set simple waypoint
	_wp = _grp addWaypoint [_pos, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointBehaviour "CARELESS";
    _wp setWaypointCombatMode "BLUE";
	_wp setWaypointCompletionRadius _cRadius;

	_wp
