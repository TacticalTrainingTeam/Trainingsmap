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

//Eventhandler der die Loadoutauswahl an Zeusplatzierte Container heftet und mit Nachschub befüllt
["B_Slingload_01_Cargo_F", "Init",{
	[_this select 0] call Andx_loadouts_fnc_addActions;

	// clearWeaponCargoGlobal (_this select 0);
    // clearMagazineCargoGlobal (_this select 0);
    // clearItemCargoGlobal (_this select 0);
    // clearBackpackCargoGlobal (_this select 0);

	[_this select 0]  execVM "scripts\ax_log.sqf";

}, false, nil, false] call CBA_fnc_addClassEventHandler;

// spec_medic
[sign_medizinischerbereich, medic_mat_2, "Medic Dummy B"] call Spec_medic_fnc_addTrainingStation;
[sign_medizinischerbereich, medic_mat_1, "Medic Dummy A"] call Spec_medic_fnc_addTrainingStation;

// spectator cam and clean up near base
flag_sammelplatz addAction ["Zuschauermodus", {
    params ["_target","_caller"];

    ["Initialize", [_caller, [], true]] call BIS_fnc_EGSpectator;
	},
	[],1,false,true,"","",5
	
	];

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
//laptopHangar_1 addAction ["Trupp - Sicherung 360",{boardHangar_1 setObjectTextureGlobal [0, "formationen\05_trupp_360_sicherung.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Sicherung 360",{boardHangar_1 setObjectTextureGlobal [0, "formationen\10_gruppe_360_sicherung.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Stack",{boardHangar_1 setObjectTextureGlobal [0, "formationen\06_gruppe_stack.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Keil",{boardHangar_1 setObjectTextureGlobal [0, "formationen\07_gruppe_keil.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Kette",{boardHangar_1 setObjectTextureGlobal [0, "formationen\08_gruppe_Schutzenkette.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Gruppe - Reihe",{boardHangar_1 setObjectTextureGlobal [0, "formationen\09_gruppe_schutzenreihe.paa"];},[],1,false,true,"","",5];

//Nummern/Tarn/Farbe wechseln an TTT Schild
{
		_x addAction
		[
			"Werde Nummer 1",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "1"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Nummer 2",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "2"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Nummer 3",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "3"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Nummer 4",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "4"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Nummer 5",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "5"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Nummer 6",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "6"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Nummer 7",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "7"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Nummer 8",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "8"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Nummer 9",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["helm", "9"];
				hint "Neues Loadout ausrüsten um den richtigen Helm zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Gelb",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["farbe", "yellow"];
				hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Gold",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["farbe", "gold"];
				hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Grau",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["farbe", "grey"];
				hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";	
			}
		];

		_x addAction
		[
			"Werde Grün",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["farbe", "green"];
				hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Orange",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["farbe", "orange"];
				hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Rot",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["farbe", "red"];
				hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
			}
		];


		_x addAction
		[
			"Werde Schwarz",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["farbe", "black"];
				hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
			}
		];

		_x addAction
		[
			"Werde Violett",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["farbe", "violet"];
				hint "Neues Loadout ausrüsten um die richtige Farbe zu bekommen.";
			}
		];

		_x addAction
		[
			"TTT Flecktarn",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["tarn", "BW_Flecktarn"];
				hint "Neues Loadout ausrüsten um die richtige Uniform zu bekommen.";
			}
		];

		_x addAction
		[
			"TTT Tropentarn",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_caller setVariable ["tarn", "BW_Tropentarn"];
				hint "Neues Loadout ausrüsten um die richtige Uniform zu bekommen.";
			}
		];

		_x addAction
		[
			"Schalldämpfer ausrüsten",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				[_caller] spawn compile preprocessFileLineNumbers "loadouts\Suppressor.sqf";
				hint "Schalldämpfer ausgerüstet.";
			}
		];
		
		_x addAction
		[
			"Fallschirm ausrüsten",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				[_caller] spawn compile preprocessFileLineNumbers "loadouts\Parachute.sqf";
				hint "Fallschirm und Höhenmesser ausgerüstet.";
			}
		];

} forEach [nummer_01, nummer_02, nummer_03, nummer_04, nummer_05, nummer_06, nummer_07, nummer_08, nummer_09,
nummer_10, nummer_11, nummer_12, nummer_13, nummer_14, nummer_15, nummer_16, nummer_17, nummer_18, nummer_19,
nummer_20, nummer_21, nummer_22, nummer_23, nummer_24, nummer_25, nummer_26, nummer_27];