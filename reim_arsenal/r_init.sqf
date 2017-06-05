/*
	author = Reimchen
	description = Seiten hinzufügen
*/
#include "const.hpp"

disableSerialization;

private _display = findDisplay DIALOG_ARSENAL_ID;
// add sides
private _combo = _display displayCtrl LISTBOX_SIDE_ID;
_combo lbAdd "BLUFOR";
/*
{
    _combo lbAdd str _x;
} forEach SIDE_ARRAY
*/
