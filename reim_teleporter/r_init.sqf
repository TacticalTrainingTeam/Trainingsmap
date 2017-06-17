/*
	author = Reimchen
	description = Auswahl in der Liste
*/

disableSerialization;

_display = findDisplay 5000;

_listBox = _display displayCtrl 5002;

_listBox lbAdd "CQB-Area";
_listBox lbAdd "Luftfahrtgelaende";
_listBox lbAdd "Medizinbereich";
_listBox lbAdd "Moerserplatz";
_listBox lbAdd "Panzerplatz";
_listBox lbAdd "Pionierplatz";
_listBox lbAdd "Sammelplatz";
_listBox lbAdd "Tribuene";
_listBox lbAdd "TTT-Spawner Boden";
_listBox lbAdd "TTT-Spawner Luft";
_listBox lbAdd "Uebungsplatz";

_listBox lbSetColor [0, [1,1,1,1]];

// add event handler for double click
_listBox ctrlSetEventHandler ["LBDblClick", "[] spawn {execVM 'reim_teleporter\r_action.sqf';};"];