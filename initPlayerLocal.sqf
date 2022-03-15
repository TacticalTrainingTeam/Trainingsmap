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

//Loadout-Container
{
	_x addAction
		[
			"Grün - Zugführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_ZugF.sqf";
			}
		];

	_x addAction
		[
			"Grün - Stellv. Zugführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_StZugF.sqf";
			}
		];

	_x addAction
		[
			"Grün - Funker",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_Funker.sqf";
			}
		];

	_x addAction
		[
			"Grün - FO",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_FO.sqf";
			}
		];

	_x addAction
		[
			"Grün - JTAC",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_JTAC.sqf";
			}
		];
		
	_x addAction
		[
			"Grün - Gruppenführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_GF.sqf";
			}
		];

	_x addAction
		[
			"Grün - Truppführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_TF.sqf";
			}
		];

	_x addAction
		[
			"Grün - LMG-Schütze",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_LMG.sqf";
			}
		];

	_x addAction
		[
			"Grün - Grenadier",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_Gren.sqf";
			}
		];

	_x addAction
		[
			"Grün - DMR-Schütze",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_DMR.sqf";
			}
		];

	_x addAction
		[
			"Grün - Leichter AT-Schütze (NLAW)",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_LAT.sqf";
			}
		];

	_x addAction
		[
			"Grün - AT-Schütze (MAAWS)",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_AT.sqf";
			}
		];

	_x addAction
		[
			"Grün - AT-Assistent",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_ATA.sqf";
			}
		];

	_x addAction
		[
			"Grün - Schwerer AT-Schütze (Titan)",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_HAT.sqf";
			}
		];

	_x addAction
		[
			"Grün - Schwerer AT-Assistent",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_HATA.sqf";
			}
		];

	_x addAction
		[
			"Grün - MMG-Schütze [Marksman DLC]",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_MMG.sqf";
			}
		];

	_x addAction
		[
			"Grün - MMG-Assistent",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_MMGA.sqf";
			}
		];

	_x addAction
		[
			"Grün - AA-Schütze",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_AA.sqf";
			}
		];

	_x addAction
		[
			"Grün - AA-Assistent",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_AAA.sqf";
			}
		];

	_x addAction
		[
			"Grün - Schütze",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_Rifle.sqf";
			}
		];

	_x addAction
		[
			"Grün - Munitionsträger",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_Ammo.sqf";
			}
		];

	_x addAction
		[
			"Blau - Pionier Truppführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Blau_Pio_GF.sqf";
			}
		];

	_x addAction
		[
			"Blau - Pionier",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Blau_Pio.sqf";
			}
		];

	_x addAction
		[
			"Bronze - Kommandant",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Bronze_Commander.sqf";
			}
		];

	_x addAction
		[
			"Bronze - Kraftfahrer / Richtschütze",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Bronze_Crew.sqf";
			}
		];

	_x addAction
		[
			"Gold - Aufklärer Truppführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_TF.sqf";
			}
		];

	_x addAction
		[
			"Gold - Drohnenbediener",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_UAV.sqf";
			}
		];

	_x addAction
		[
			"Gold - Spotter",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Spotter.sqf";
			}
		];

	_x addAction
		[
			"Gold - Sniper",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Sniper.sqf";
			}
		];

	_x addAction
		[
			"Braun - Arzt",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Braun_Arzt.sqf";
			}
		];

	_x addAction
		[
			"Braun - Sanitäter",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Braun_Sani.sqf";
			}
		];

	_x addAction
		[
			"Platin - Pilot (Jet)",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Platin_Jet.sqf";
			}
		];

	_x addAction
		[
			"Platin - Pilot (Helikopter)",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Platin\TTT_Platin_Heli.sqf";
			}
		];

	_x addAction
		[
			"Weiß - Pilot",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weiß_Pilot.sqf";
			}
		];

	_x addAction
		[
			"Weiß - Arzt",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weiß_Arzt.sqf";
			}
		];

	_x addAction
		[
			"Weiß - Sani",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weiß_Sani.sqf";
			}
		];

		_x addAction
		[
			"Silber - Pilot",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Pilot.sqf";
			}
		];

		_x addAction
		[
			"Silber - Logistiker",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Logi.sqf";
			}
		];

		_x addAction
		[
			"Silber - Pilot",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Pilot.sqf";
			}
		];

		_x addAction
		[
			"Rot (Mörser) - Fire Direction Commander",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Rot\TTT_Rot_FDC.sqf";
			}
		];

		_x addAction
		[
			"Rot (Mörser) - Geschützcrew",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Rot\TTT_Rot_Mortar.sqf";
			}
		];

		_x addAction
		[
			"Schwarz (Mech.-Inf.) - Zugführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_ZugF.sqf";
			}
		];

		_x addAction
		[
			"Schwarz (Mech.-Inf.) - Gruppenführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_GF.sqf";
			}
		];

		_x addAction
		[
			"Schwarz (Mech.-Inf.) - Truppführer",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_TF.sqf";
			}
		];

	
		_x addAction
		[
			"Schwarz (Mech.-Inf.) - Fahrer/Ricthschütze",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Crew.sqf";
			}
		];

		_x addAction
		[
			"Schwarz (Mech.-Inf.) - Grenadier",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Gren.sqf";
			}
		];

		_x addAction
		[
			"Schwarz (Mech.-Inf.) - Leichter AT-Schütze (NLAW)",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_LAT.sqf";
			}
		];

		
		_x addAction
		[
			"Schwarz (Mech.-Inf.) - AT-Schütze (MAAWS)",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_AT.sqf";
			}
		];

			_x addAction
		[
			"Schwarz (Mech.-Inf.) - Grenadier",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_LAT.sqf";
			}
		];

			_x addAction
		[
			"Schwarz (Mech.-Inf.) - DMR-Schütze",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_DMR.sqf";
			}
		];

				_x addAction
		[
			"Schwarz (Mech.-Inf.) - Schütze",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Rifle.sqf";
			}
		];

		_x addAction
		[
			"TTT - Kampftaucher",	// title
			{
				params ["_target", "_caller", "_actionId", "_arguments"]; // script

				_helm = _caller getVariable ["helm", ""];
				[_caller, _helm] spawn compile preprocessFileLineNumbers "loadouts\Gold\TTT_Diver.sqf";
			}
		];
} forEach [container_01, container_02, container_03, container_04, container_05, container_06, container_07, container_08, container_09, container_10, container_11, container_12, container_13, container_14, container_15, container_16, container_17, container_18, container_19,
container_20, container_21, container_22, container_23, container_24, container_25, container_26, container_27];

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