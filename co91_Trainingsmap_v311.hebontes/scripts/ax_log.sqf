//Fills given object with a list of Items

params ["_containers"];

//Kisten befüllen skipt laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Kiste befüllen
[
    [_containers],
    [
      ["ACE_fieldDressing", 270],
	  ["ACE_quikclot", 90],
	  ["ACE_packingBandage", 90],
	  ["ACE_morphine", 27],
	  ["ACE_painkillers", 27],
	  ["ACE_tourniquet", 54],

	  ["HandGrenade", 60],
	  ["SmokeShell", 60],
	  ["SmokeShellGreen", 30],
	  ["SmokeShellBlue", 20],
	  ["ACE_M84", 30],
	  ["ACE_IR_Strobe_Item", 30],
	  ["SmokeShellOrange", 20],
	  ["SmokeShellPurple", 20],
	  ["SmokeShellYellow", 20],
	  ["SmokeShellRed", 20],

	  ["1Rnd_HE_Grenade_shell", 30],
	  ["1Rnd_Smoke_Grenade_shell", 30],
	  ["1Rnd_SmokeRed_Grenade_shell", 30],
	  ["1Rnd_SmokeOrange_Grenade_shell", 30],
	  ["ACE_HuntIR_M203", 20],

	  ["50Rnd_570x28_SMG_03", 30],
	  ["30Rnd_556x45_Stanag_Red", 60],
	  ["30Rnd_556x45_Stanag_Tracer_Red", 60],
	  ["16Rnd_9x21_Mag", 30],
	  ["200Rnd_556x45_Box_Tracer_Red_F", 60],
	  ["ACE_20Rnd_762x51_Mag_Tracer", 60],
	  ["7Rnd_408_Mag", 20],
	  ["ACE_20Rnd_762x51_Mag_SD", 20],
	  ["130Rnd_338_Mag", 30],
	  ["5Rnd_127x108_APDS_Mag", 20],

	  ["MRAWS_HEAT_F", 20],
	  ["MRAWS_HE_F", 10],
	  ["launch_NLAW_F", 20],
	  ["Titan_AA", 10],
	  ["Titan_AT", 10],

	  ["DemoCharge_Remote_Mag", 30],

	  ["ACRE_PRC343", 30],
	  ["ACRE_PRC152", 30],
	  ["ACRE_PRC117F", 10],

	  ["ItemMicroDAGR", 30],
	  ["ItemAndroid", 10],
	  ["ItemcTab", 10],
	  ["ACE_HuntIR_monitor", 10],
	  ["ACE_Vector", 10],
	  ["ACE_microDAGR", 10]
    ]
] call reim_fnc_crateFiller;