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


//Inventar der Container auf der Karte
{
	_x setVariable ["ace_cargo_noRename", true]; //Container kann nicht umbenannt werden

	[_x] execVM "scripts\ax_log.sqf"; //Inhalt

	[_x, 0] call ace_cargo_fnc_setSpace; //Containercargo auf 0 setzen

} forEach [
	container_01, 
	container_03, 
	container_04, 
	container_05, 
	container_06, 
	container_07, 
	container_08, 
	container_09,
	container_10, 
	container_11, 
	container_12, 
	//container_13, //Pio Gelände
	container_14, 
	container_15, 
	container_16, 
	container_17, 
	container_18, 
	container_19,
	container_20, 
	container_21, 
	container_22, 
	container_23, 
	container_24, 
	container_25, 
	container_26, 
	container_27
];

//Inventar der Pio Container auf der Karte
{
	_x setVariable ["ace_cargo_noRename", true]; //Container kann nicht umbenannt werden

	[_x] execVM "scripts\ax_log_pio.sqf"; //Inhalt

	[_x, 0] call ace_cargo_fnc_setSpace; //Containercargo auf 0 setzen

} forEach [
	container_13 //Pio Gelände
];

//GRAD Fortification setup 
{
	[_x, "Land_BagFence_Short_F", 10] call grad_fortifications_fnc_addFort;
	[_x, "Land_Plank_01_4m_F", 10] call grad_fortifications_fnc_addFort;
	[_x, "Land_Net_Fence_4m_F", 10] call grad_fortifications_fnc_addFort;
	[_x, "Land_CzechHedgehog_01_new_F", 10] call grad_fortifications_fnc_addFort;
	[_x, "Land_Razorwire_F", 10] call grad_fortifications_fnc_addFort;
	
} forEach [fort_01];

//Kisten befüllen skipt laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Kisten befüllen
[
	[crate_etool],
	[
		["ACE_EntrenchingTool", 32],
		["mts_cutter_folding_saw", 32]
	]
] call reim_fnc_crateFiller;

[
	[crate_wirecutter],
	[
		["ACE_Wirecutter", 32],
		["UK3CB_CHD_B_B_ENG_WDL_ALT", 32]
	]
] call reim_fnc_crateFiller;

[
	[crate_toolkit],
	[
		["Toolkit", 32]
	]
] call reim_fnc_crateFiller;

[
	[crate_flags],
	[
		["ACE_SpraypaintGreen", 4],
        ["ACE_SpraypaintRed", 4],
        ["ACE_SpraypaintBlack", 4],
		
        ["ace_marker_flags_orange", 20],

		["mts_items_marker_yellow", 40],
		["mts_items_marker_mine", 40]
	]
] call reim_fnc_crateFiller;

[
	[crate_m112],
	[
		["tsp_frameCharge_mag", 50],
		["tsp_stickCharge_mag", 50],
		["tsp_popperCharge_mag", 50],
		["ACE_Clacker", 16],
		["rhs_weap_M590_5RD", 16],
		["rhsusf_5Rnd_00Buck", 50]
	]
] call reim_fnc_crateFiller;

[
	[crate_vmh3],
	[
		["ACE_VMH3", 64]
	]
] call reim_fnc_crateFiller;

[
	[crate_beret],
	[
		["PBW_barett_pi", 16]
	]
] call reim_fnc_crateFiller;

[
	[fhz_01, fhz_02, fhz_03, fhz_04, fhz_05, fhz_06],
	[
		["BWA3_G82_Hensoldt", 1],
		["BWA3_10Rnd_127x99_G82", 3],
		["Toolkit", 1],
		["B_Carryall_khk", 1]
	]
] call reim_fnc_crateFiller;
