/*
	author = Reimchen
	edit: Andx
	description = n.a.
*/

// create center to spawn enemies or civilian in other scripts
EastHQ = createCenter EAST;
CivHQ = createCenter CIVILIAN;

//Setup ACEX Fortify
[
	west, 
	200,
	[
	  ["EFM_wood_wall_2m_single_filled", 1],
	  ["Land_BagFence_Short_F", 1],
	  ["Land_Net_Fence_4m_F", 1],
	  ["Land_Plank_01_4m_F", 1],
	  ["FlagMarker_01_F", 1]	
	]
] call acex_fortify_fnc_registerObjects;


//Kisten befüllen skipt laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Kiste befüllen
[
    [supply_01, supply_02, container_01, container_02, container_03, container_04, container_05, container_06, container_07, container_08, container_09,
container_10, container_11, container_12, container_13, container_14, container_15, container_16, container_17, container_18, container_19,
container_20, container_21, container_22, container_23, container_24, container_25, container_26, container_27],
    [
      ["ACE_fieldDressing", 270],
	  ["ACE_quikclot", 90],
	  ["ACE_packingBandage", 90],
	  ["ACE_morphine", 27],
	  ["ACE_tourniquet", 54],

	  ["HandGrenade", 30],
	  ["SmokeShell", 30],
	  ["SmokeShellGreen", 30],
	  ["SmokeShellBlue", 30],
	  ["ACE_M84", 30],
	  ["ACE_IR_Strobe_Item", 30],
	  ["SmokeShellOrange", 30],
	  ["SmokeShellPurple", 30],
	  ["SmokeShellYellow", 30],
	  ["SmokeShellRed", 60],

	  ["1Rnd_HE_Grenade_shell", 60],
	  ["1Rnd_Smoke_Grenade_shell", 60],
	  ["1Rnd_SmokeRed_Grenade_shell", 60],
	  ["ACE_HuntIR_M203", 60],

	  ["50Rnd_570x28_SMG_03", 60],
	  ["30Rnd_556x45_Stanag_Red", 60],
	  ["30Rnd_556x45_Stanag_Tracer_Red", 60],
	  ["16Rnd_9x21_Mag", 30],
	  ["200Rnd_556x45_Box_Tracer_Red_F", 60],
	  ["ACE_20Rnd_762x51_Mag_Tracer", 60],
	  ["7Rnd_408_Mag", 20],
	  ["ACE_20Rnd_762x51_Mag_SD", 20],
	  ["130Rnd_338_Mag", 30],

	  ["MRAWS_HEAT_F", 10],
	  ["MRAWS_HE_F", 10],
	  ["ACE_launch_NLAW_ready_F", 10],
	  ["Titan_AA", 10],
	  ["Titan_AT", 10],

	  ["DemoCharge_Remote_Mag", 30],
	  ["SatchelCharge_Remote_Mag", 10],

	  ["ACRE_PRC343", 20],
	  ["ACRE_PRC152", 20],
	  ["ACRE_PRC117F", 10],

	  ["ItemAndroid", 30],
	  ["ItemcTab", 30],
	  ["ACE_HuntIR_monitor", 10]
    ]
] call reim_fnc_crateFiller;