/*
	author = Reimchen
	edit: Redd, Andx
	description = Auswahl in der Liste
*/

disableSerialization;

_display = findDisplay 5000;

_listBox = _display displayCtrl 5002;

_listBox lbAdd "=== Infanterie ===";//0
_listBox lbAdd "Zugführer";//1
_listBox lbAdd "Stellv. Zugführer";//2
_listBox lbAdd "Funker / Nachschubfeldwebel";//3
_listBox lbAdd "Forward Observer";//4
_listBox lbAdd "Joint-Terminal-Attack-Controller";//5
_listBox lbAdd "Gruppenführer";//6
_listBox lbAdd "Truppführer";//7
_listBox lbAdd "LMG-Schütze";//8
_listBox lbAdd "Grenadier";//9
_listBox lbAdd "DMR-Schütze";//10
_listBox lbAdd "Leichter AT-Schütze (NLAW)";//11
_listBox lbAdd "AT-Schütze (MAAWS)";//12
_listBox lbAdd "AT-Hilfsschütze";//13
_listBox lbAdd "Schwerer AT-Schütze (Titan)";//14
_listBox lbAdd "Schwerer AT-Hilfsschütze";//15
_listBox lbAdd "MMG-Schütze [Marksman-DLC]";//16
_listBox lbAdd "MMG-Hilfsschütze";//17
_listBox lbAdd "AA-Schütze";//18
_listBox lbAdd "AA-Hilfsschütze";//19
_listBox lbAdd "Schütze";//20

_listBox lbAdd "=== gepanzerte Kräfte ===";//21
_listBox lbAdd "Bronze - Kommandant";//22
_listBox lbAdd "Bronze - Crew";//23

_listBox lbAdd "=== Kampfunterstützer ===";//24
_listBox lbAdd "Mörser Fire Direction Commander";//25
_listBox lbAdd "Mörserschütze";//26

_listBox lbAdd "Blau - Pionier Truppführer";//27
_listBox lbAdd "Blau - Pionier";//28

_listBox lbAdd "Kampftaucher";//29

_listBox lbAdd "Gold - Aufklärer Truppführer";//30
_listBox lbAdd "Gold - Aufklärer Drohnenbediener";//31
_listBox lbAdd "Gold - Spotter";//32
_listBox lbAdd "Gold - Scharfschütze";//33
_listBox lbAdd "Gold - Spotter (Anti-Material Rifle)";//34
_listBox lbAdd "Gold - Scharfschütze (Anti-Material Rifle)";//35

_listBox lbAdd "Platin - CAS-Pilot (Jet)";//36
_listBox lbAdd "Platin - CAS-Pilot (Helikopter)";//37

_listBox lbAdd "=== Nachschub ===";//38

_listBox lbAdd "Braun - Arzt";//39
_listBox lbAdd "Braun - Sanitäter";//40

_listBox lbAdd "Weiß - MedEVac-Pilot";//41
_listBox lbAdd "Weiß - Arzt (Long Range)";//42
_listBox lbAdd "Weiß - Arzt";//43
_listBox lbAdd "Weiß - Sanitäter";//44

_listBox lbAdd "Silber - Logistik-Pilot";//45
_listBox lbAdd "Silber - Logistiker";//46

_listBox lbSetColor [0, [1,1,1,1]];

// add event handler for double click
_listBox ctrlSetEventHandler ["LBDblClick", "[] spawn {execVM 'andx_loadouts\a_action.sqf';};"];