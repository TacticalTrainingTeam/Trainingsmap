/*
	author = Reimchen
	description = Klassen hinzufügen
*/
#include "const.hpp"

private _selectedIndex = lbCurSel LISTBOX_FACTION_ID;
private _combo = (findDisplay DIALOG_ARSENAL_ID) displayCtrl LISTBOX_CLASS_ID;
// save selection
private _selectedFactionIndex = SIDE_ARRAY find (missionNamespace getVariable [SIDE_VAR, SIDE_DEFAULT]);
missionNamespace setVariable [FACTION_VAR, (FACTION_ARRAY select _selectedFactionIndex) select _selectedIndex];
// add classes
lbClear LISTBOX_CLASS_ID;
{
    _combo lbAdd _x;
} forEach CLASS_ARRAY;

hint "Markiere zuerst eine Seite/Fraktion/Klasse";