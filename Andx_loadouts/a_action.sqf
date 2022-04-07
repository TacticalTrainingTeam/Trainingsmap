/*
	author = Reimchen
	edit: Redd
	description = Funktionen zum teleportieren
*/

_selectedIndex = lbCurSel 5002;

if (_selectedIndex == 0) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Zugführer";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_ZugF.sqf";
};

if (_selectedIndex == 1) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Stellv. Zugführer";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_StZugF.sqf";
};

if (_selectedIndex == 2) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Funker";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_Funker.sqf";
};

if (_selectedIndex == 3) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Forward Observer";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_FO.sqf";
};

if (_selectedIndex == 4) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - JTAC";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_JTAC.sqf";
};

if (_selectedIndex == 5) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Gruppenführer";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_GF.sqf";
};

if (_selectedIndex == 6) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Truppführer";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_TF.sqf";
};

if (_selectedIndex == 7) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - LMG";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_LMG.sqf";
};

if (_selectedIndex == 8) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Grenadier";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_Gren.sqf";
};

if (_selectedIndex == 9) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - DMR-Schütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_DMR.sqf";
};

if (_selectedIndex == 10) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Leichter AT-Schütze (NLAW)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Grun\TTT_Grun_LAT.sqf";
};

if (_selectedIndex == 11) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - AT-Schütze (MAAWS)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_AT.sqf";
};

if (_selectedIndex == 12) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - AT-Hilfsschütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Grun\TTT_Grun_ATA.sqf";
};

if (_selectedIndex == 13) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Schwerer AT-Schütze (Titan)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_HAT.sqf";
};

if (_selectedIndex == 14) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Schwerer AT-Hilfsschütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_HATA.sqf";
};

if (_selectedIndex == 15) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - MMG-Schütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_MMG.sqf";
};

if (_selectedIndex == 16) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - MMG-Hilfsschütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Grun_MMGA.sqf";
};

if (_selectedIndex == 17) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - AA-Schütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Grun\TTT_Grun_AA.sqf";
};

if (_selectedIndex == 18) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - AA-Hilfsschütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Grun\TTT_Grun_AAA.sqf";
};

if (_selectedIndex == 19) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Munitionsträger";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Grun\TTT_Grun_Ammo.sqf";
};

if (_selectedIndex == 20) exitWith {
	closeDialog 0;
	hint "Du bist nun Grün - Schütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Grun\TTT_Grun_Rifle.sqf";
};

if (_selectedIndex == 21) exitWith {
	closeDialog 0;
	hint "Du bist nun Bronze - Kommandant";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Bronze_Commander.sqf";
};

if (_selectedIndex == 22) exitWith {
	closeDialog 0;
	hint "Du bist nun Bronze - Crew";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Bronze_Crew.sqf";
};

if (_selectedIndex == 23) exitWith {
	closeDialog 0;
	hint "Du bist nun Blau - Pionier Truppführer";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Blau_Pio_GF.sqf";
};

if (_selectedIndex == 24) exitWith {
	closeDialog 0;
	hint "Du bist nun Blau - Pionier";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Blau_Pio.sqf";
};

if (_selectedIndex == 25) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Aufklärer Truppführer";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_TF.sqf";
};

if (_selectedIndex == 26) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Drohnenbediener";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_UAV.sqf";
};

if (_selectedIndex == 27) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Spotter";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Spotter.sqf";
};

if (_selectedIndex == 28) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Scharfschütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Sniper.sqf";
};

if (_selectedIndex == 29) exitWith {
	closeDialog 0;
	hint "Du bist nun Braun - Arzt";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Braun_Arzt.sqf";
};

if (_selectedIndex == 30) exitWith {
	closeDialog 0;
	hint "Du bist nun Braun - Sanitäter";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Braun_Sani.sqf";
};

if (_selectedIndex == 31) exitWith {
	closeDialog 0;
	hint "Du bist nun Platin - Pilot (Jet)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Platin_Jet.sqf";
};

if (_selectedIndex == 32) exitWith {
	closeDialog 0;
	hint "Du bist nun Platin - Pilot (Helikopter)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Platin\TTT_Platin_Heli.sqf";
};

if (_selectedIndex == 33) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Pilot";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weis_Pilot.sqf";
};

if (_selectedIndex == 34) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Arzt (Long Range)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weis_Arzt.sqf";
};

if (_selectedIndex == 35) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Arzt";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weis_Arzt2.sqf";
};

if (_selectedIndex == 36) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Sanitäter";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weis_Sani.sqf";
};

if (_selectedIndex == 37) exitWith {
	closeDialog 0;
	hint "Du bist nun Silber - Pilot";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Pilot.sqf";
};

if (_selectedIndex == 38) exitWith {
	closeDialog 0;
	hint "Du bist nun Silber - Logistiker";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Logi.sqf";
};

if (_selectedIndex == 39) exitWith {
	closeDialog 0;
	hint "Du bist nun Rot - Fire Direction Commander";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Rot\TTT_Rot_FDC.sqf";
};

if (_selectedIndex == 40) exitWith {
	closeDialog 0;
	hint "Du bist nun Rot - Mörserschütze";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Rot\TTT_Rot_Mortar.sqf";
};

if (_selectedIndex == 41) exitWith {
	closeDialog 0;
	hint "Du bist nun Kampftaucher";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Gold\TTT_Diver.sqf";
};

if (_selectedIndex == 42) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Zugführer (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_ZugF.sqf";
};

if (_selectedIndex == 43) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Gruppenführer (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_GF.sqf";
};

if (_selectedIndex == 44) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Truppführer (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_TF.sqf";
};

if (_selectedIndex == 45) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Crew (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Crew.sqf";
};

if (_selectedIndex == 46) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Grenadier (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Gren.sqf";
};

if (_selectedIndex == 47) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - LMG-Schütze (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_LMG.sqf";
};


if (_selectedIndex == 47) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - LAT-Schütze (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_LAT.sqf";
};


if (_selectedIndex == 49) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - AT-Schütze (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_AT.sqf";
};

if (_selectedIndex == 50) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - DMR-Schütze (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_DMR.sqf";
};


if (_selectedIndex == 51) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwarz - Schütze (mech. Inf.)";
	private _helm = (player getVariable ["helm", ""]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\Schwarz\TTT_Schwarz_Rifle.sqf";
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
