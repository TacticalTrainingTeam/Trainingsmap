

if (isServer) then 
{
	missionNamespace setVariable ["reddZugSB_Kpz_enable", true, true];

	_targetArray = 
	[
		t_0_0_0,
		t_0_0_1,
		t_0_0_2,
		t_0_0_3,
		t_0_0_4,
		t_0_0_5,
		t_0_0_6,

		t_0_1_0,
		t_0_1_1,
		t_0_1_2,
		t_0_1_3,
		t_0_1_4,
		t_0_1_5,
		t_0_1_6,

		t_0_2_0,
		t_0_2_1,
		t_0_2_2,
		t_0_2_3,
		t_0_2_4,
		t_0_2_5,
		t_0_2_6,

		t_e_0,
		t_e_1,
		t_e_2,
		t_e_3,
		t_e_4,
		t_e_5,
		t_e_6
	];

	{
		_x animate ["terc",1];
	} 
	foreach _targetArray;

	{
        _x enableSimulationGlobal false;
    } 
    forEach 
    [
        reddZugSB_Kpz_0,
		reddZugSB_Kpz_1,
		reddZugSB_Kpz_2,
		reddZugSB_Kpz_ende
    ];
};