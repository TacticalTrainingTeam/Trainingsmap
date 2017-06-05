/*
	author = Reimchen
	description = Fraktionen hinzufügen
*/
#include "const.hpp"

private _selectedIndex = lbCurSel LISTBOX_SIDE_ID;
private _combo = (findDisplay DIALOG_ARSENAL_ID) displayCtrl LISTBOX_FACTION_ID;
// save selection
missionNamespace setVariable [SIDE_VAR, SIDE_ARRAY select _selectedIndex];
// add factions
lbClear LISTBOX_FACTION_ID;
lbClear LISTBOX_CLASS_ID;
{
    _combo lbAdd _x;
} forEach (FACTION_ARRAY select _selectedIndex);