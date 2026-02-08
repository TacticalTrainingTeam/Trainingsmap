

if (isServer) then 
{
    params ["_s1","_s2","_s3","_currentTrigger", "_nextTrigger"];

    _currentTrigger enableSimulationGlobal false;
    _nextTrigger enableSimulationGlobal true;

    _targetArray =  [_s1, _s2, _s3];
    _actualTarget = selectRandom _targetArray;
    _vehArray = ["O_APC_Tracked_02_cannon_F","O_MBT_02_cannon_F","O_APC_Wheeled_02_rcws_v2_F","O_Truck_03_covered_F","O_MRAP_02_F"];

    _rndVeh = selectRandom _vehArray;
    _veh = _rndVeh createVehicle position _actualTarget;
    _veh setDir 220;
    _veh engineOn true;
}
