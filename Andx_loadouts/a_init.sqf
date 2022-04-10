/*
	author = Reimchen
	edit: Redd, Andx
	description = Auswahl in der Liste
*/

disableSerialization;

_display = findDisplay 5000;

_listBox = _display displayCtrl 5002;

_listBox lbAdd "Zugführer";//0
_listBox lbAdd "Stellv. Zugführer";//1
_listBox lbAdd "Funker / Nachschubfeldwebel";//2
_listBox lbAdd "Forward Observer";//3
_listBox lbAdd "Joint-Terminal-Attack-Controller";//4
_listBox lbAdd "Gruppenführer";//5
_listBox lbAdd "Truppführer";//6
_listBox lbAdd "LMG-Schütze";//7
_listBox lbAdd "Grenadier";//8
_listBox lbAdd "DMR-Schütze";//9
_listBox lbAdd "Leichter AT-Schütze (NLAW)";//10
_listBox lbAdd "AT-Schütze (MAAWS)";//11
_listBox lbAdd "AT-Hilfsschütze";//12
_listBox lbAdd "Schwerer AT-Schütze (Titan)";//13
_listBox lbAdd "Schwerer AT-Hilfsschütze";//14
_listBox lbAdd "MMG-Schütze [Marksman-DLC]";//15
_listBox lbAdd "MMG-Hilfsschütze";//16
_listBox lbAdd "AA-Schütze";//17
_listBox lbAdd "AA-Hilfsschütze";//18
_listBox lbAdd "Munitonsträger";//19
_listBox lbAdd "Schütze";//20

_listBox lbAdd "Bronze - Kommandant";//21
_listBox lbAdd "Bronze - Crew";//22

_listBox lbAdd "Blau - Pionier Truppführer";//23
_listBox lbAdd "Blau - Pionier";//24

_listBox lbAdd "Gold - Aufklärer Truppführer";//25
_listBox lbAdd "Gold - Drohnenbediener";//26
_listBox lbAdd "Gold - Spotter";//27
_listBox lbAdd "Gold - Scharfschütze";//28

_listBox lbAdd "Braun - Arzt (BAT)";//29
_listBox lbAdd "Braun - Sanitäter (BAT)";//30

_listBox lbAdd "Platin - CAS-Pilot (Jet)";//31
_listBox lbAdd "Platin - CAS-Pilot (Helikopter)";//32

_listBox lbAdd "Weiß - MedEVac-Pilot";//33
_listBox lbAdd "Weiß - Arzt (Long Range)";//34
_listBox lbAdd "Weiß - Arzt";//35
_listBox lbAdd "Weiß - Sanitäter";//36

_listBox lbAdd "Silber - Logistik-Pilot";//37
_listBox lbAdd "Silber - Logistiker";//38

_listBox lbAdd "Fire Direction Commander";//39
_listBox lbAdd "Mörserschütze";//40

_listBox lbAdd "Kampftaucher";//41
_listBox lbAdd "Scharfschütze Anti-Material Rifle";//42
_listBox lbAdd "Spotter Anti-Material Rifle";//43

_listBox lbSetColor [0, [1,1,1,1]];

// add event handler for double click
_listBox ctrlSetEventHandler ["LBDblClick", "[] spawn {execVM 'andx_loadouts\a_action.sqf';};"];