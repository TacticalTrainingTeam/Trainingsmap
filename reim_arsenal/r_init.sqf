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

// add event handler for selection change and double click
{
    _x params ["_id", "_event", "_scriptBaseName"];
    private _listBox = _display displayCtrl _id;
    _listBox ctrlSetEventHandler [_event, format ["[] spawn {execVM 'reim_arsenal\%1';};", _scriptBaseName]];
} forEach [
    [LISTBOX_SIDE_ID, "LBSelChanged", "r_side.sqf"],
    [LISTBOX_FACTION_ID, "LBSelChanged", "r_faction.sqf"],
    [LISTBOX_CLASS_ID, "LBDblClick", "r_class.sqf"]
];