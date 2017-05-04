/*
	author = Reimchen
	description = Klassen hinzufügen
*/

_selectedIndex = lbCurSel 5111;
_combo = (findDisplay 5100) displayCtrl 5109;

if (_selectedIndex == 0) exitWith {
	if (reim_arsenal_blu) exitWith {
		reim_arsenal_us = false;
		reim_arsenal_bw = true;
		reim_arsenal_rus = false;
		lbClear 5109;
		_combo lbAdd "AT";
		_combo lbAdd "Funker";
		_combo lbAdd "Gefechtssanitäter";
		_combo lbAdd "Grenadier";
		_combo lbAdd "LMG";
		_combo lbAdd "MG-Assistent";
		_combo lbAdd "MMG";
		_combo lbAdd "Pionier";
		_combo lbAdd "Scharfschütze";
		_combo lbAdd "Spotter";
		_combo lbAdd "Truppführer";
	};
	if (reim_arsenal_rus) exitWith {
		reim_arsenal_us = false;
		reim_arsenal_bw = false;
		reim_arsenal_rus = true;
		lbClear 5109;
		_combo lbAdd "AT";
		_combo lbAdd "Funker";
		_combo lbAdd "Gefechtssanitäter";
		_combo lbAdd "Grenadier";
		_combo lbAdd "LMG";
		_combo lbAdd "MG-Assistent";
		_combo lbAdd "MMG";
		_combo lbAdd "Pionier";
		_combo lbAdd "Scharfschütze";
		_combo lbAdd "Spotter";
		_combo lbAdd "Truppführer";
	};
};
if (_selectedIndex == 1) exitWith {
	if (reim_arsenal_blu) exitWith {
		reim_arsenal_us = true;
		reim_arsenal_bw = false;
		reim_arsenal_rus = false;
		lbClear 5109;
		_combo lbAdd "AT";
		_combo lbAdd "Funker";
		_combo lbAdd "Gefechtssanitäter";
		_combo lbAdd "Grenadier";
		_combo lbAdd "LMG";
		_combo lbAdd "MG-Assistent";
		_combo lbAdd "MMG";
		_combo lbAdd "Pionier";
		_combo lbAdd "Scharfschütze";
		_combo lbAdd "Spotter";
		_combo lbAdd "Truppführer";
	};
};

hint "Markiere zuerst eine Seite/Fraktion/Klasse";