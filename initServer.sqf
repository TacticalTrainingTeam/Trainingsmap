/*
	author = Reimchen
	description = n.a.
*/

// create center to spawn enemies or civilian in other scripts
EastHQ = createCenter EAST;
CivHQ = createCenter CIVILIAN;

// Edit by Andx
//Setup ACEX Fortify
[
	west, 
	200,
	[
	  ["EFM_wood_wall_2m_single", 1],
	  ["Land_BagFence_Short_F", 1],
	  ["Land_Net_Fence_4m_F", 1],
	  ["Land_Shoot_House_Wall_Long_F", 1],
	  ["Land_Plank_01_4m_F", 1]
	
	]
] call acex_fortify_fnc_registerObjects;
