if(!isServer) exitWith {};

// Popup runter CQB
// get all targets
private _targetArrayCQB = nearestObjects [(getMarkerPos "target_range_cqb"), ["TargetBase"], 300];
private _targetArraySSCH = nearestObjects [(getMarkerPos "target_range"), ["TargetBase"], 600];
//move down targets

{

	if ((_x getVariable "target_range_cqb") == 1 OR (_x getVariable "target_range_cqb") == 2)  then 
	{
		_x animate ["terc",1];
		[_x,true] remoteExecCall ["hideObjectGlobal", 2];
	}
	else 
	{
		_x animate ["terc",1];
	};
	

} foreach _targetArrayCQB;

{
	_x animate ["terc",1];
	
} foreach _targetArraySSCH;