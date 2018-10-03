/*
	author = Reimchen
	description = Funktionen zum teleportieren
*/

_selectedIndex = lbCurSel 5002;

if (_selectedIndex == 0) exitWith {
	closeDialog 0;
	hint "Du bist nun bei der CQB-Area";
	player SetPos [(getMarkerPos "teleport_cqb" select 0),(getMarkerPos "teleport_cqb" select 1)];
};
if (_selectedIndex == 1) exitWith {
	closeDialog 0;
	hint "Du bist nun beim Luftfahrtgelände";
	player SetPos [(getMarkerPos "teleport_luftfahrtgelaende" select 0),(getMarkerPos "teleport_luftfahrtgelaende" select 1)];
};
if (_selectedIndex == 2) exitWith {
	closeDialog 0;
	hint "Du bist nun beim Medizinbereich";
	player SetPos [(getMarkerPos "teleport_medizinischerbereich" select 0),(getMarkerPos "teleport_medizinischerbereich" select 1)];
};
if (_selectedIndex == 3) exitWith {
	closeDialog 0;
	hint "Du bist nun beim Mörserplatz";
	player SetPos [(getMarkerPos "teleport_moerserplatz" select 0),(getMarkerPos "teleport_moerserplatz" select 1)];
};
if (_selectedIndex == 4) exitWith {
	closeDialog 0;
	hint "Du bist nun beim Panzerplatz";
	player SetPos [(getMarkerPos "teleport_panzerplatz" select 0),(getMarkerPos "teleport_panzerplatz" select 1)];
};
if (_selectedIndex == 5) exitWith {
	closeDialog 0;
	hint "Du bist nun beim Pionierplatz";
	player SetPos [(getMarkerPos "teleport_pionierplatz" select 0),(getMarkerPos "teleport_pionierplatz" select 1)];
};
if (_selectedIndex == 6) exitWith {
	closeDialog 0;
	hint "Du bist nun beim Sammelplatz";
	player SetPos [(getMarkerPos "teleport_sammelplatz" select 0),(getMarkerPos "teleport_sammelplatz" select 1)];
};
if (_selectedIndex == 7) exitWith {
	closeDialog 0;
	hint "Du bist nun bei der Tribuene";
	player SetPos [(getMarkerPos "teleport_showcase_oben" select 0),(getMarkerPos "teleport_showcase_oben" select 1)];
};
if (_selectedIndex == 8) exitWith {
	closeDialog 0;
	hint "Du bist nun beim TTT-Spawner Boden";
	player SetPos [(getMarkerPos "teleport_ttt_boden" select 0),(getMarkerPos "teleport_ttt_boden" select 1)];
};
if (_selectedIndex == 9) exitWith {
	closeDialog 0;
	hint "Du bist nun beim TTT-Spawner Luft";
	player SetPos [(getMarkerPos "teleport_ttt_luft" select 0),(getMarkerPos "teleport_ttt_luft" select 1)];
};
if (_selectedIndex == 10) exitWith {
	closeDialog 0;
	hint "Du bist nun beim Uebungsplatz";
	player SetPos [(getMarkerPos "teleport_uebungsplatz" select 0),(getMarkerPos "teleport_uebungsplatz" select 1)];
};

/*
if (_selectedIndex == -) exitWith {
	closeDialog 0;
	hint "Du bist nun beim -";
	player SetPos [(getMarkerPos "-" select 0),(getMarkerPos "-" select 1)];
};
*/

hint "Markiere zuerst einen Ort";
