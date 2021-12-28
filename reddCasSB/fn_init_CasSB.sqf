

if (isServer) then 
{
	missionNamespace setVariable ["reddCasSB_enable", true, true];

	{
        _x enableSimulationGlobal false;
    } 
    forEach 
    [
        reddCasSB_0,
        reddCasSB_1,
        reddCasSB_2,
        reddCasSB_3,
        reddCasSB_4,
        reddCasSB_5
    ];
};