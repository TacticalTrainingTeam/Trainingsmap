/*
	author = Reimchen
	description = Fraktionen hinzufügen
*/

_selectedIndex = lbCurSel 5110;
_combo = (findDisplay 5100) displayCtrl 5111;

if (_selectedIndex == 0) exitWith {
	reim_arsenal_blu = true;
	reim_arsenal_rus = false;
	lbClear 5111;
	lbClear 5109;
	_combo lbAdd "TTT-BW";
	_combo lbAdd "TTT-US";
};
if (_selectedIndex == 1) exitWith {
	reim_arsenal_rus = true;
	reim_arsenal_blu = false;
	lbClear 5111;
	lbClear 5109;
	_combo lbAdd "TTT-RUS";
};
