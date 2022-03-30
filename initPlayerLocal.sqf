/*
	author = Reimchen 
    edit: Redd + Andx
	description = n.a.
*/

// W-Teleporter
{
    _x addAction ["W-Teleporter",{createDialog "W_RscTeleportDialog"},[],1,false,true,"","",5];
} forEach [

    flag_Infanterie_Gefechtsschiessbahn,
    flag_Infanterie_Schulschiessbahn,
    flag_Scharfschuetzen_Schulschiessbahn,
    flag_Kpz_Spz_Gefechtsschiessbahn,
    flag_Kpz_Spz_Schulschiessbahn,
    flag_AT_Schiessbahn,
    flag_uebungsplatz,
    flag_aa_Schiessbahn,
    flag_Handgranaten,
    flag_cqb,
    flag_fzg,
    flag_kpz_gsch_zug,
    flag_spz_gesch_zug,
    flag_trpPlz,
    flag_cas,
    flag_sammelplatz,
    flag_medizinischerbereich,
    flag_pionierplatz,
    flag_luftfahrgelaende,
    flag_moerserplatz
    
];

// spec_medic
[sign_medizinischerbereich, medic_mat_2, "Medic Dummy B"] call Spec_medic_fnc_addTrainingStation;
[sign_medizinischerbereich, medic_mat_1, "Medic Dummy A"] call Spec_medic_fnc_addTrainingStation;

// spectator cam and clean up near base
flag_sammelplatz addAction ["Zuschauermodus", {
    params ["_target","_caller"];
    ["Initialize", [_caller, [], true]] call BIS_fnc_EGSpectator;
},[],1,false,true,"","",5];
player addEventHandler ["Respawn",{
    params ["","_corpse"];
    if((getPosASL player) distance (getMarkerPos "respawn") < 1000) then {
        deleteVehicle _corpse;
    };
}];

//Laptop Formationen
laptopHangar_1 addAction ["Anzeige leeren",{boardHangar_1 setObjectTextureGlobal [0, "formationen\00_Leer.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Grundlagen",{boardHangar_1 setObjectTextureGlobal [0, "formationen\01_Grundlagen.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Sicherungsbereiche",{boardHangar_1 setObjectTextureGlobal [0, "formationen\02_Sicherungsbereiche.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Trupp - Stack",{boardHangar_1 setObjectTextureGlobal [0, "formationen\03_trupp_stack.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Trupp - Keil",{boardHangar_1 setObjectTextureGlobal [0, "formationen\04_trupp_keil.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Trupp - Kette",{boardHangar_1 setObjectTextureGlobal [0, "formationen\05_trupp_schutzenkette.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Trupp - Sicherung 180",{boardHangar_1 setObjectTextureGlobal [0, "formationen\05_trupp_180_sicherung.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Trupp - Sicherung 360",{boardHangar_1 setObjectTextureGlobal [0, "formationen\05_trupp_360_sicherung.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Stack",{boardHangar_1 setObjectTextureGlobal [0, "formationen\06_gruppe_stack.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Keil",{boardHangar_1 setObjectTextureGlobal [0, "formationen\07_gruppe_keil.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Kette",{boardHangar_1 setObjectTextureGlobal [0, "formationen\08_gruppe_Schutzenkette.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Reihe",{boardHangar_1 setObjectTextureGlobal [0, "formationen\09_gruppe_schutzenreihe.paa"];},[],1,false,true,"","",5];

//Nummern wechseln an TTT Schild
{
	_x addAction
		[
			"Werde 1",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "1"];
			}
		];

		_x addAction
		[
			"Werde 2",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "2"];
			}
		];

		_x addAction
		[
			"Werde 3",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "3"];
			}
		];

		_x addAction
		[
			"Werde 4",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "4"];
			}
		];

			_x addAction
		[
			"Werde 5",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "5"];
			}
		];

			_x addAction
		[
			"Werde 6",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "6"];
			}
		];

			_x addAction
		[
			"Werde 7",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "7"];
			}
		];

		_x addAction
		[
			"Werde 8",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "8"];
			}
		];

		_x addAction
		[
			"Werde 9",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "9"];
			}
		];

		_x addAction
		[
			"Fallschirm ausrüsten",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				[_caller] spawn compile preprocessFileLineNumbers "loadouts\TTT_Parachute.sqf";
				hint "Fallschirm und Höhenmesser ausgerüstet.";
			}
		];

} forEach [nummer_01, nummer_02, nummer_03, nummer_04, nummer_05, nummer_06, nummer_07, nummer_08, nummer_09,
nummer_10, nummer_11, nummer_12, nummer_13, nummer_14, nummer_15, nummer_16, nummer_17, nummer_18, nummer_19,
nummer_20, nummer_21, nummer_22, nummer_23, nummer_24, nummer_25, nummer_26, nummer_27];