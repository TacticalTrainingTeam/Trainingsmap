/*
    Author: SpecOp0

    Description:
    Adds custom modules to the curators

    Returns:
    true
*/

// add Arsenal (Reimchen) to an object
[
    "Zeus",
    "Arsenal (Reimchen)",
    {
        params ["_position","_droppedObject"];
        if !(isNull _droppedObject) then {
            [_droppedObject] remoteExec ["Reim_arsenal_fnc_addActions", 0, true];
            hintSilent "Reimchen's Arsenal hinzugefügt.";
        } else {
            hint "Kein Objekt zum Hinzufügen des Arsenals von Reimchen gefunden.";
        };
    }
] call Ares_fnc_RegisterCustomModule;

// Spawn ammo crate
[
    "Zeus",
    "Munitionskiste",
    {
        params ["_position","_droppedObject"];
        [_position] remoteExec ["Spec_zeusUtility_fnc_spawnAmmoBox", 2];
    }
] call Ares_fnc_RegisterCustomModule;

true
