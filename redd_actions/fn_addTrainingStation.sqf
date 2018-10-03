#include "const.hpp"

if(hasInterface) then {

    params ["_object"];
    
    _object addAction ["Bodenfahrzeuge spawnen",VVS_fnc_openVVS,["spawn_panzerplatz","Armored"],2,false,true,"","",5];

    // add
    _object addAction [
        "Ich bin Panzerkommandant",
        { 
            params ["_target", "_caller"];
            [_caller] call Redd_fnc_addActions;
        },
        [], 2, false, true, "",
        format ["count (_this getVariable [""%1"", []]) == 0", ACTION_INDICES_STRING]
    ];

    // remove
    _object addAction [
        "Ich bin kein Panzerkommandant",
        { 
            params ["_target", "_caller"];
            private _actionIndices = _caller getVariable [ACTION_INDICES_STRING, []];
            {
                _caller removeAction _x;
            } foreach _actionIndices;
            _caller setVariable [ACTION_INDICES_STRING, []];
            // clean up
            _caller setVariable [MENU_STRING, MENU_NONE];
            private _spawnedObjects = _caller getVariable [SPAWNED_OBJECTS_STRING, []];
            {
                deleteVehicle _x;
            } foreach _spawnedObjects;
            _caller setVariable [SPAWNED_OBJECTS_STRING, []];
        },
        [], 2, false, true, "",
        format ["count (_this getVariable [""%1"", []]) > 0", ACTION_INDICES_STRING]
    ];

};