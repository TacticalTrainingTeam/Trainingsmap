/*
	author = Reimchen 
	    edit: Redd + Andx
	description = n.a.
*/

// W-Teleporter
{
	_x call FETT_fnc_W_addTeleport;
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
		flag_medizinischerbereich,
		flag_pionierplatz,
		flag_luftfahrgelaende,
		flag_moerserplatz
	];

	// Heilen an Flagge
	{
		_x addAction ["Heilen",
			{
				[player] call ace_medical_treatment_fnc_fullHealLocal;
				playSound "fullheal";
			}, [], 1.5, true, true, "", "true", 5];
			} forEach [
				healFlag_01,
				healFlag_02,
				healFlag_03,
				healFlag_04,
				healFlag_05,
				healFlag_06,
				healFlag_07,
				healFlag_08,
				healFlag_09,
				healFlag_10,
				healFlag_11,
				healFlag_12,
				healFlag_13,
				healFlag_14,
				healFlag_15,
				healFlag_16,
				healFlag_17
			];

			// Truppfarbe etc für alle Container auf der Karte
			{
				nul = [_x] execVM "scripts\ax_options.sqf";
				} forEach [container_01, container_03, container_04, container_05, container_06, container_07, container_08, container_09,
					container_10, container_11, container_12, container_13, container_14, container_15, container_16, container_17, container_18, container_19,
				container_20, container_21, container_22, container_23, container_24, container_25, container_26, container_27];

				// spec_medic
				[sign_medizinischerbereich, medic_mat_2, "Medic Dummy B"] call Spec_medic_fnc_addTrainingStation;
				[sign_medizinischerbereich, medic_mat_1, "Medic Dummy A"] call Spec_medic_fnc_addTrainingStation;

				// Cleanup am Respawn
				player addEventHandler ["Respawn", {
					params ["", "_corpse"];

					if ((getPosASL player) distance (getMarkerPos "respawn") < 1000) then {
						deleteVehicle _corpse;
					};
				}];

				// Laptop Formationen
				laptopHangar_1 addAction ["Anzeige leeren", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\00_Leer.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Grundlagen", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\01_Grundlagen.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Sicherungsbereiche", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\02_Sicherungsbereiche.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Trupp - Stack", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\03_trupp_stack.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Trupp - Keil", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\04_trupp_keil.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Trupp - Kette", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\05_trupp_schutzenkette.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Trupp - Sicherung 180", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\05_trupp_180_sicherung.paa"];
				}, [], 1, false, true, "", "", 5];
				// laptopHangar_1 addAction ["Trupp - Sicherung 360", {
				//	boardHangar_1 setObjectTextureGlobal [0, "formationen\05_trupp_360_sicherung.paa"];
				//}, [], 1, false, true, "", "", 5];
				

				laptopHangar_1 addAction ["Gruppe - Sicherung 360", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\10_gruppe_360_sicherung.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Gruppe - Stack", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\06_gruppe_stack.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Gruppe - Keil", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\07_gruppe_keil.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Gruppe - Kette", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\08_gruppe_Schutzenkette.paa"];
				}, [], 1, false, true, "", "", 5];
				laptopHangar_1 addAction ["Gruppe - Reihe", {
					boardHangar_1 setObjectTextureGlobal [0, "formationen\09_gruppe_schutzenreihe.paa"];
				}, [], 1, false, true, "", "", 5];