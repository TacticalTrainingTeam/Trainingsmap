/*
	author = Reimchen
	edit: Redd
	description = Auswahl in der Liste
*/

disableSerialization;

_display = findDisplay 5000;

_listBox = _display displayCtrl 5002;

_listBox lbAdd "Camp Asteria: Sammelplatz";//0
_listBox lbAdd "Camp Themis: Flugabwehr Schulschießbahn";//1
_listBox lbAdd "Camp Themis: Rettungszentrum";//2
_listBox lbAdd "Aiolos Airfield: Luftfahrtgelände";//3
_listBox lbAdd "Hebontes: Fahrzeug Trainingsstrecke";//4
_listBox lbAdd "Hebontes: Truppenübunsplatz";//5
_listBox lbAdd "Fire Pos 1: Artillerie/Mörser Feuerstellung";//6
_listBox lbAdd "Fire Pos 2: Pionier-Übungsgelände";//7
_listBox lbAdd "SR 2: Handgranaten-Übungsgelände";//8
_listBox lbAdd "SR 3: Panzerabwehrschießbahn";//9
_listBox lbAdd "SR 4: OHK-Übungsgelände";//10
_listBox lbAdd "SR 5: Kpz/Spz Schulschießbahn";//11
_listBox lbAdd "SR 6: Kpz/Spz Gefechtsschießbahn";//12
_listBox lbAdd "SR 10: Kpz Gefechtsschießbahn Zug";//13
_listBox lbAdd "SR 11: Infanterie Gefechtsschießbahn";//14
_listBox lbAdd "SR 12: Infanterie Schulschießbahn";//15
_listBox lbAdd "SR 13: ZF-Schützen/MG Schulschießbahn";//16
_listBox lbAdd "SR 16: Spz Gefechtsschießbahn Zug";//17
_listBox lbAdd "SR 17: JTAC Schießbahn";//18
_listBox lbAdd "SR 18: Formationen-Übungsgelände";//19

_listBox lbSetColor [0, [1,1,1,1]];

// add event handler for double click
_listBox ctrlSetEventHandler ["LBDblClick", "[] spawn {execVM 'reim_teleporter\r_action.sqf';};"];