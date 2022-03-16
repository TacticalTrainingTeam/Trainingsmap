/*
	author = Reimchen
	edit: Redd
	description = Auswahl in der Liste
*/

disableSerialization;

_display = findDisplay 5000;

_listBox = _display displayCtrl 5002;

_listBox lbAdd "Grün - Zugführer";//0
_listBox lbAdd "Grün - Stellv. Zugführer";//1
_listBox lbAdd "Grün - Funker / Nachschubfeldwebel";//2
_listBox lbAdd "Grün - Forward Observer";//3
_listBox lbAdd "Grün - Joint-Terminal-Attack-Controller";//4
_listBox lbAdd "Grün - Gruppenführer";//5
_listBox lbAdd "Grün - Truppführer";//6
_listBox lbAdd "Grün - LMG-Schütze";//7
_listBox lbAdd "Grün - Grenadier";//8
_listBox lbAdd "Grün - DMR-Schütze";//9
_listBox lbAdd "Grün - Leichter AT-Schütze (NLAW)";//10
_listBox lbAdd "Grün - AT-Schütze (MAAWS)";//11
_listBox lbAdd "Grün - AT-Hilfsschütze";//12
_listBox lbAdd "Grün - Schwerer AT-Schütze (Titan)";//13
_listBox lbAdd "Grün - Schwerer AT-Hilfsschütze";//14
_listBox lbAdd "Grün - MMG-Schütze [Marksman-DLC]";//15
_listBox lbAdd "Grün - MMG-Hilfsschütze";//16
_listBox lbAdd "Grün - AA-Schütze";//17
_listBox lbAdd "Grün - AA-Hilfsschütze";//18
_listBox lbAdd "Grün - Munitonsträger";//19
_listBox lbAdd "Grün - Schütze";//20

_listBox lbAdd "Bronze - Kommandant";//21
_listBox lbAdd "Bronze - Crew";//22

_listBox lbAdd "Blau - Pionier Truppführer";//23
_listBox lbAdd "Blau - Pionier";//24

_listBox lbAdd "Gold - Aufklärer Truppführer";//25
_listBox lbAdd "Gold - Drohnenbediener";//26
_listBox lbAdd "Gold - Spotter";//27
_listBox lbAdd "Gold - Scharfschütze";//28

_listBox lbAdd "Braun - Arzt";//29
_listBox lbAdd "Braun - Sanitäter";//30

_listBox lbAdd "Platin - Pilot (Jet)";//31
_listBox lbAdd "Platin - Pilot (Helikopter)";//32

_listBox lbAdd "Weiß - Pilot";//33
_listBox lbAdd "Weiß - Arzt";//34
_listBox lbAdd "Weiß - Sanitäter";//35

_listBox lbAdd "Silber - Pilot";//36
_listBox lbAdd "Silber - Logistiker";//37

_listBox lbAdd "Rot - Fire Direction Commander";//38
_listBox lbAdd "Rot - Mörserschütze";//39

_listBox lbAdd "TTT - Kampftaucher";//40

_listBox lbSetColor [0, [1,1,1,1]];

// add event handler for double click
_listBox ctrlSetEventHandler ["LBDblClick", "[] spawn {execVM 'andx_loadouts\a_action.sqf';};"];