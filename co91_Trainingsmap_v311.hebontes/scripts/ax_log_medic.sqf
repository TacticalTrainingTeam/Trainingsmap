// Fills given object with a list of items

params ["_containers"];

// Kisten befüllen skipt laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

// Kiste befüllen
[
	[_containers],
	[
		["ACE_fieldDressing", 270],
		["ACE_quikclot", 90],
		["ACE_elasticBandage", 90],
		["ACE_packingBandage", 90],

		["ACE_Painkillers", 27],
		["ACE_Morphine", 27],
		["ACE_Epinephrine", 27],
		["ACE_Adenopsine", 27],

		["ACE_tourniquet", 54],
		["ACE_Suture", 100],
		["ACE_splint", 40],

		["ACE_SurgicalKit", 10],
		["ACE_PersonalAidKit", 10],

		["ACE_BodyBag", 40],

		["ACE_salineIV_250", 50],
		["ACE_salineIV_500", 50],
		["ACE_salineIV", 50]
	]
] call reim_fnc_crateFiller;