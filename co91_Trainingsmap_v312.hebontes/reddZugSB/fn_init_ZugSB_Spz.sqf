

if (isServer) then 
{
	missionNamespace setVariable ["reddZugSB_Spz_enable", true, true];

	_targetArray = 
	[
		t_1_0_0,
		t_1_0_1,
		t_1_0_2,
		t_1_0_3,
		t_1_0_4,
		t_1_0_5,
		t_1_0_6,

		t_1_1_0,
		t_1_1_1,
		t_1_1_2,
		t_1_1_3,
		t_1_1_4,
		t_1_1_5,
		t_1_1_6,

		t_1_2_0,
		t_1_2_1,
		t_1_2_2,
		t_1_2_3,
		t_1_2_4,
		t_1_2_5,
		t_1_2_6,

		t_e_0_2,
		t_e_1_2,
		t_e_2_2,
		t_e_3_2,
		t_e_4_2,
		t_e_5_2,
		t_e_6_2,
		t_e_7_2,
		t_e_8_2,
		t_e_9_2,
		t_e_10_2,
		t_e_11_2,
		t_e_12_2,
		t_e_13_2,
		t_e_14_2
	];
	
	{
		_x animate ["terc",1];
	} 
	foreach _targetArray;

	_infTargetArray = nearestObjects [(getMarkerPos "spzCQB"), ["TargetBase"], 300];

	{
		_x animate ["terc",1];
		[_x,false] remoteExecCall ["hideObjectGlobal", 2];
	} 
	foreach _infTargetArray;

	{
        _x enableSimulationGlobal false;
    } 
    forEach 
    [
        reddZugSB_Spz_0,
		reddZugSB_Spz_1,
		reddZugSB_Spz_2,
		reddZugSB_Spz_ende
    ];
};