/*
	author = Reimchen
	edit: Redd
	description = Funktionen zum teleportieren
*/

_selectedIndex = lbCurSel 5002;

if (_selectedIndex == 0) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Zugführer";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_ZugF.sqf";
};

if (_selectedIndex == 1) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Stellv. Zugführer";
	_helm = player getVariable ["helm", "2"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_StZugF.sqf";
};

if (_selectedIndex == 2) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Funker";
	_helm = player getVariable ["helm", "3"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_Funker.sqf";
};

if (_selectedIndex == 3) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Forward Observer";
	_helm = player getVariable ["helm", "4"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_FO.sqf";
};

if (_selectedIndex == 4) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - JTAC";
	_helm = player getVariable ["helm", "5"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_JTAC.sqf";
};

if (_selectedIndex == 5) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Gruppenführer";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_GF.sqf";
};

if (_selectedIndex == 6) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Truppführer";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_TF.sqf";
};

if (_selectedIndex == 7) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - LMG";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_LMG.sqf";
};

if (_selectedIndex == 8) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Grenadier";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_Gren.sqf";
};

if (_selectedIndex == 9) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - DMR-Schütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_DMR.sqf";
};

if (_selectedIndex == 10) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Leichter AT-Schütze (NLAW)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_LAT.sqf";
};

if (_selectedIndex == 11) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - AT-Schütze (MAAWS)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_AT.sqf";
};

if (_selectedIndex == 12) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - AT-Hilfsschütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_ATA.sqf";
};

if (_selectedIndex == 13) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Schwerer AT-Schütze (Titan)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_HAT.sqf";
};

if (_selectedIndex == 14) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Schwerer AT-Hilfsschütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_HATA.sqf";
};

if (_selectedIndex == 15) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - MMG-Schütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_MMG.sqf";
};

if (_selectedIndex == 16) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - MMG-Hilfsschütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_MMGA.sqf";
};

if (_selectedIndex == 17) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - AA-Schütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_AA.sqf";
};

if (_selectedIndex == 18) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - AA-Hilfsschütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_AAA.sqf";
};

if (_selectedIndex == 19) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Munitionsträger";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_Ammo.sqf";
};

if (_selectedIndex == 20) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Schütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Grün\TTT_Grun_Rifle.sqf";
};

if (_selectedIndex == 21) exitWith {
	closeDialog 0;
	hint "Du bist nun Bronze - Kommandant";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Bronze_Commander.sqf";
};

if (_selectedIndex == 22) exitWith {
	closeDialog 0;
	hint "Du bist nun Bronze - Crew";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Bronze_Crew.sqf";
};

if (_selectedIndex == 23) exitWith {
	closeDialog 0;
	hint "Du bist nun Blau - Pionier Truppführer";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Blau_Pio_GF.sqf";
};

if (_selectedIndex == 24) exitWith {
	closeDialog 0;
	hint "Du bist nun Blau - Pionier";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Blau_Pio.sqf";
};

if (_selectedIndex == 25) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Aufklärer Truppführer";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_TF.sqf";
};

if (_selectedIndex == 26) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Drohnenbediener";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_UAV.sqf";
};

if (_selectedIndex == 27) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Spotter";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Spotter.sqf";
};

if (_selectedIndex == 28) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Scharfschütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Sniper.sqf";
};

if (_selectedIndex == 29) exitWith {
	closeDialog 0;
	hint "Du bist nun Braun - Arzt";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Braun_Arzt.sqf";
};

if (_selectedIndex == 30) exitWith {
	closeDialog 0;
	hint "Du bist nun Braun - Sanitäter";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Braun_Sani.sqf";
};

if (_selectedIndex == 31) exitWith {
	closeDialog 0;
	hint "Du bist nun Platin - Pilot (Jet)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Platin_Jet.sqf";
};

if (_selectedIndex == 32) exitWith {
	closeDialog 0;
	hint "Du bist nun Platin - Pilot (Helikopter)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Platin\TTT_Platin_Heli.sqf";
};

if (_selectedIndex == 33) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Pilot";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weiß_Pilot.sqf";
};

if (_selectedIndex == 34) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Arzt (Long Range)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weiß_Arzt.sqf";
};

if (_selectedIndex == 35) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Arzt";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weiß_Arzt2.sqf";
};

if (_selectedIndex == 36) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Sanitäter";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weiß_Sani.sqf";
};

if (_selectedIndex == 37) exitWith {
	closeDialog 0;
	hint "Du bist nun Silber - Pilot";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Pilot.sqf";
};

if (_selectedIndex == 38) exitWith {
	closeDialog 0;
	hint "Du bist nun Silber - Logistiker";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Logi.sqf";
};

if (_selectedIndex == 39) exitWith {
	closeDialog 0;
	hint "Du bist nun Rot - Fire Direction Commander";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Rot\TTT_Rot_FDC.sqf";
};

if (_selectedIndex == 40) exitWith {
	closeDialog 0;
	hint "Du bist nun Rot - Mörserschütze";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Rot\TTT_Rot_Mortar.sqf";
};

if (_selectedIndex == 41) exitWith {
	closeDialog 0;
	hint "Du bist nun Kampftaucher";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Gold\TTT_Diver.sqf";
};

if (_selectedIndex == 42) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Zugführer (mech. Inf.)";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_ZugF.sqf";
};

if (_selectedIndex == 43) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Gruppenführer (mech. Inf.)";
	_helm = player getVariable ["helm", "1"];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_GF.sqf";
};

if (_selectedIndex == 44) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Truppführer (mech. Inf.)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_TF.sqf";
};

if (_selectedIndex == 45) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Crew (mech. Inf.)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Crew.sqf";
};

if (_selectedIndex == 46) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Grenadier (mech. Inf.)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Gren.sqf";
};

if (_selectedIndex == 47) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - LMG-Schütze (mech. Inf.)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_LMG.sqf";
};


if (_selectedIndex == 47) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - LAT-Schütze (mech. Inf.)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_LAT.sqf";
};


if (_selectedIndex == 49) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - AT-Schütze (mech. Inf.)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_AT.sqf";
};

if (_selectedIndex == 50) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - DMR-Schütze (mech. Inf.)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_DMR.sqf";
};


if (_selectedIndex == 51) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Schütze (mech. Inf.)";
	_helm = player getVariable ["helm", ""];
	[player, _helm] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Rifle.sqf";
};

if (_selectedIndex == 51) exitWith {
	//closeDialog 0;
};

/*
if (_selectedIndex == -) exitWith {
	closeDialog 0;
	hint "Du bist nun beim -";
	player SetPos [(getMarkerPos "-" select 0),(getMarkerPos "-" select 1)];
};
*/

hint "Wähle zuerst ein Loadout aus der Liste aus";
