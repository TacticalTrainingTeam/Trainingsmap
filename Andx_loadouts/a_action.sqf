/*
	author = Reimchen
	edit: Redd, Andx
	description = Loadoutauswahl per GUI
*/

_selectedIndex = lbCurSel 5002;

if (_selectedIndex == 1) exitWith {
	closeDialog 0;
	hint "Du bist nun Zugführer";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_ZugF.sqf";
};

if (_selectedIndex == 2) exitWith {
	closeDialog 0;
	hint "Du bist nun Stellv. Zugführer";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_StZugF.sqf";
};

if (_selectedIndex == 3) exitWith {
	closeDialog 0;
	hint "Du bist nun Funker / Nachschubfeldwebel";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Funker.sqf";
};

if (_selectedIndex == 4) exitWith {
	closeDialog 0;
	hint "Du bist nun Forward Observer";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_FO.sqf";
};

if (_selectedIndex == 5) exitWith {
	closeDialog 0;
	hint "Du bist nun JTAC";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_JTAC.sqf";
};

if (_selectedIndex == 6) exitWith {
	closeDialog 0;
	hint "Du bist nun Gruppenführer";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_GF.sqf";
};

if (_selectedIndex == 7) exitWith {
	closeDialog 0;
	hint "Du bist nun Truppführer";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_TF.sqf";
};

if (_selectedIndex == 8) exitWith {
	closeDialog 0;
	hint "Du bist nun LMG";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_LMG.sqf";
};

if (_selectedIndex == 9) exitWith {
	closeDialog 0;
	hint "Du bist nun Grenadier";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gren.sqf";
};

if (_selectedIndex == 10) exitWith {
	closeDialog 0;
	hint "Du bist nun DMR-Schütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_DMR.sqf";
};

if (_selectedIndex == 11) exitWith {
	closeDialog 0;
	hint "Du bist nun Leichter AT-Schütze (NLAW)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_LAT.sqf";
};

if (_selectedIndex == 12) exitWith {
	closeDialog 0;
	hint "Du bist nun AT-Schütze (MAAWS)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_AT.sqf";
};

if (_selectedIndex == 13) exitWith {
	closeDialog 0;
	hint "Du bist nun AT-Hilfsschütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_ATA.sqf";
};

if (_selectedIndex == 14) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwerer AT-Schütze (Titan)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_HAT.sqf";
};

if (_selectedIndex == 15) exitWith {
	closeDialog 0;
	hint "Du bist nun Schwerer AT-Hilfsschütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_HATA.sqf";
};

if (_selectedIndex == 16) exitWith {
	closeDialog 0;
	hint "Du bist nun MMG-Schütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_MMG.sqf";
};

if (_selectedIndex == 17) exitWith {
	closeDialog 0;
	hint "Du bist nun MMG-Hilfsschütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_MMGA.sqf";
};

if (_selectedIndex == 18) exitWith {
	closeDialog 0;
	hint "Du bist nun AA-Schütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_AA.sqf";
};

if (_selectedIndex == 19) exitWith {
	closeDialog 0;
	hint "Du bist nun AA-Hilfsschütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_AAA.sqf";
};


if (_selectedIndex == 20) exitWith {
	closeDialog 0;
	hint "Du bist nun Schütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "green"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Rifle.sqf";
};

if (_selectedIndex == 22) exitWith {
	closeDialog 0;
	hint "Du bist nun Bronze - Kommandant";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "bronze"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Bronze_Commander.sqf";
};

if (_selectedIndex == 23) exitWith {
	closeDialog 0;
	hint "Du bist nun Bronze - Crew";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "bronze"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Bronze_Crew.sqf";
};

if (_selectedIndex == 25) exitWith {
	closeDialog 0;
	hint "Du bist nun Mörser Fire Direction Commander";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "red"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_FDC.sqf";
};

if (_selectedIndex == 26) exitWith {
	closeDialog 0;
	hint "Du bist nun Mörserschütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "red"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Mortar.sqf";
};

if (_selectedIndex == 27) exitWith {
	closeDialog 0;
	hint "Du bist nun Blau - Pionier Truppführer";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "blue"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Blau_Pio_GF.sqf";
};

if (_selectedIndex == 28) exitWith {
	closeDialog 0;
	hint "Du bist nun Blau - Pionier";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "blue"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Blau_Pio.sqf";
};

if (_selectedIndex == 29) exitWith {
	closeDialog 0;
	hint "Du bist nun Kampftaucher";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "gold"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Diver.sqf";
};

if (_selectedIndex == 30) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Aufklärer Truppführer";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "gold"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_TF.sqf";
};

if (_selectedIndex == 31) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Aufklärer Drohnenbediener";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "gold"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_UAV.sqf";
};

if (_selectedIndex == 32) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Spotter";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "gold"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Spotter.sqf";
};

if (_selectedIndex == 33) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Scharfschütze";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "gold"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Sniper.sqf";
};

if (_selectedIndex == 34) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Spotter (Anti-Material Rifle)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "gold"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Spotter_AMR.sqf";
};

if (_selectedIndex == 35) exitWith {
	closeDialog 0;
	hint "Du bist nun Gold - Scharfschütze (Anti-Material Rifle)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "gold"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Gold_Sniper_AMR.sqf";
};

if (_selectedIndex == 36) exitWith {
	closeDialog 0;
	hint "Du bist nun Platin - CAS-Pilot (Jet)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "platinum"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Platin_Jet.sqf";
};

if (_selectedIndex == 37) exitWith {
	closeDialog 0;
	hint "Du bist nun Platin - CAS-Pilot (Helikopter)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "platinum"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Platin_Heli.sqf";
};

if (_selectedIndex == 39) exitWith {
	closeDialog 0;
	hint "Du bist nun Braun - Arzt";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "brown"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Braun_Arzt.sqf";
};

if (_selectedIndex == 40) exitWith {
	closeDialog 0;
	hint "Du bist nun Braun - Sanitäter (BAT)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "brown"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Braun_Sani.sqf";
};

if (_selectedIndex == 41) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - MedEvac-Pilot";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "white"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weis_Pilot.sqf";
};

if (_selectedIndex == 42) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Arzt (Long Range)";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "white"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weis_Arzt.sqf";
};

if (_selectedIndex == 43) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Arzt";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "white"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weis_Arzt2.sqf";
};

if (_selectedIndex == 44) exitWith {
	closeDialog 0;
	hint "Du bist nun Weiß - Sanitäter";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "white"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Weis_Sani.sqf";
};

if (_selectedIndex == 45) exitWith {
	closeDialog 0;
	hint "Du bist nun Silber - Logistik-Pilot";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "silver"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Pilot.sqf";
};

if (_selectedIndex == 46) exitWith {
	closeDialog 0;
	hint "Du bist nun Silber - Logistiker";
	private _helm = (player getVariable ["helm", "1"]);
	private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
	private _farbe = (player getVariable ["farbe", "silver"]);
	[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers "loadouts\TTT_Silber_Logi.sqf";
};

if (_selectedIndex == 52) exitWith {
	//closeDialog 0;
};

hint "Wähle zuerst ein Loadout aus der Liste aus";
