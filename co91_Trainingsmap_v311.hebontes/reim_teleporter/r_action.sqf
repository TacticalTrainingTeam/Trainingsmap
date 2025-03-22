/*
	author = Reimchen
	edit: Redd
	description = Funktionen zum teleportieren
*/

_selectedIndex = lbCurSel 5002;

if (_selectedIndex == 0) exitWith {
	closeDialog 0;
	hint "Du bist nun am Sammelplatz";
	player SetPos [(getMarkerPos "teleport_sammelplatz" select 0),(getMarkerPos "teleport_sammelplatz" select 1)];
};
if (_selectedIndex == 1) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Flugabwehr Schulschießbahn";
	player SetPos [(getMarkerPos "teleport_aa_Schulschiessbahn" select 0),(getMarkerPos "teleport_aa_Schulschiessbahn" select 1)];
};
if (_selectedIndex == 2) exitWith {
	closeDialog 0;
	hint "Du bist nun am Rettungszentrum";
	player SetPos [(getMarkerPos "teleport_medizinischerbereich" select 0),(getMarkerPos "teleport_medizinischerbereich" select 1)];
};
if (_selectedIndex == 3) exitWith {
	closeDialog 0;
	hint "Du bist nun am Luftfahrtgelände";
	player SetPos [(getMarkerPos "teleport_luftfahrtgelaende" select 0),(getMarkerPos "teleport_luftfahrtgelaende" select 1)];
};
if (_selectedIndex == 4) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Fahrzeug Trainingsstrecke";
	player SetPos [(getMarkerPos "teleport_fzg" select 0),(getMarkerPos "teleport_fzg" select 1)];
};
if (_selectedIndex == 5) exitWith {
	closeDialog 0;
	hint "Du bist nun am Truppenübunsplatz";
	player SetPos [(getMarkerPos "teleport_trpPlz" select 0),(getMarkerPos "teleport_trpPlz" select 1)];
};
if (_selectedIndex == 6) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Artillerie/Mörser Feuerstellung";
	player SetPos [(getMarkerPos "teleport_moerserplatz" select 0),(getMarkerPos "teleport_moerserplatz" select 1)];
};
if (_selectedIndex == 7) exitWith {
	closeDialog 0;
	hint "Du bist nun am Pionier-Übungsgelände";
	player SetPos [(getMarkerPos "teleport_pio" select 0),(getMarkerPos "teleport_pio" select 1)];
};
if (_selectedIndex == 8) exitWith {
	closeDialog 0;
	hint "Du bist nun am Handgranaten-Übungsgelände";
	player SetPos [(getMarkerPos "teleport_handGr" select 0),(getMarkerPos "teleport_handGr" select 1)];
};
if (_selectedIndex == 9) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Panzerabwehrschießbahn";
	player SetPos [(getMarkerPos "teleport_AT_Schulschiessbahn" select 0),(getMarkerPos "teleport_AT_Schulschiessbahn" select 1)];
};
if (_selectedIndex == 10) exitWith {
	closeDialog 0;
	hint "Du bist nun am OHK-Übungsgelände";
	player SetPos [(getMarkerPos "teleport_cqb" select 0),(getMarkerPos "teleport_cqb" select 1)];
};
if (_selectedIndex == 11) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Kpz/Spz Schulschießbahn";
	player SetPos [(getMarkerPos "teleport_Kpz_Spz_Schulschiessbahn" select 0),(getMarkerPos "teleport_Kpz_Spz_Schulschiessbahn" select 1)];
};
if (_selectedIndex == 12) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Kpz/Spz Gefechtsschießbahn";
	player SetPos [(getMarkerPos "teleport_Kpz_Spz_Gefechtsschiessbahn" select 0),(getMarkerPos "teleport_Kpz_Spz_Gefechtsschiessbahn" select 1)];
};
if (_selectedIndex == 13) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Kpz Gefechtsschießbahn Zug";
	player SetPos [(getMarkerPos "teleport_Kpz_Gefechtsschiessbahn_Zug" select 0),(getMarkerPos "teleport_Kpz_Gefechtsschiessbahn_Zug" select 1)];
};
if (_selectedIndex == 14) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Infanterie Gefechtsschießbahn";
	player SetPos [(getMarkerPos "teleport_Infanterie_Gefechtsschiessbahn" select 0),(getMarkerPos "teleport_Infanterie_Gefechtsschiessbahn" select 1)];
};
if (_selectedIndex == 15) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Infanterie Schulschießbahn";
	player SetPos [(getMarkerPos "teleport_Infanterie_Schulschiessbahn" select 0),(getMarkerPos "teleport_Infanterie_Schulschiessbahn" select 1)];
};
if (_selectedIndex == 16) exitWith {
	closeDialog 0;
	hint "Du bist nun an der ZF-Schützen/MG Schulschießbahn";
	player SetPos [(getMarkerPos "teleport_Scharfschuetzen_Schulschiessbahn" select 0),(getMarkerPos "teleport_Scharfschuetzen_Schulschiessbahn" select 1)];
};
if (_selectedIndex == 17) exitWith {
	closeDialog 0;
	hint "Du bist nun an der Spz Gefechtsschießbahn Zug";
	player SetPos [(getMarkerPos "teleport_Spz_Gefechtsschiessbahn_Zug" select 0),(getMarkerPos "teleport_Spz_Gefechtsschiessbahn_Zug" select 1)];
};
if (_selectedIndex == 18) exitWith {
	closeDialog 0;
	hint "Du bist nun an der JTAC Schießbahn";
	player SetPos [(getMarkerPos "teleport_cas" select 0),(getMarkerPos "teleport_cas" select 1)];
};
if (_selectedIndex == 19) exitWith {
	closeDialog 0;
	hint "Du bist nun am Formationen-Übungsgelände";
	player SetPos [(getMarkerPos "teleport_uebungsplatz" select 0),(getMarkerPos "teleport_uebungsplatz" select 1)];
};
if (_selectedIndex == 20) exitWith {
	//closeDialog 0;
};



/*
if (_selectedIndex == -) exitWith {
	closeDialog 0;
	hint "Du bist nun beim -";
	player SetPos [(getMarkerPos "-" select 0),(getMarkerPos "-" select 1)];
};
*/

hint "Markiere zuerst einen Ort";
