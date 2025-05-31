

params ["_player","_type"];

hint "Übungsbeginn!";

_targetArray = [AtG_s_0,AtG_s_1,AtG_s_2,AtG_s_3,AtG_s_4];
_softArray = ["O_Truck_02_covered_F","O_MRAP_02_F","O_Truck_03_covered_F"];
_mediumArray = ["O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_v2_F"];
_hardArray = ["O_MBT_04_cannon_F","O_MBT_02_cannon_F","O_MBT_02_arty_F"];
_veh = 0;

switch (_type) do {

	case 0:
	{
		_veh = (selectRandom _softArray) createVehicle position (selectRandom _targetArray);
		_veh setDir 45;
		_veh engineOn true;
	};

	case 1:
	{
		_veh = (selectRandom _mediumArray) createVehicle position (selectRandom _targetArray);
		_veh setDir 45;
		_veh engineOn true;
	};

	case 2:
	{
		_veh = (selectRandom _hardArray) createVehicle position (selectRandom _targetArray);
		_veh setDir 45;
		_veh engineOn true;
	};
};

[_player,_veh] spawn
{
	params ["_player","_veh"];

	waituntil 
	{
		sleep 1;
		!alive _veh;
	};

	if !(missionNamespace getVariable ["atgAbort",false]) then {hint "Ziel vernichtet";};
	missionNamespace setVariable ["actionNumber", 1];

	sleep 10;
	deleteVehicle _veh;
};
