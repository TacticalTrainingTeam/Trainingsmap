#include "const.hpp"

if(hasInterface) then 
{

    params ["_player"];

    private _actionIndices = [];    

    //start
    private _actionIndex = _player addAction 
    [
        "<t size='1' color='#0000FF'>Übungsbeginn</t>",
        { 
            params ["_target", "_caller"];
            hint "Übungsbeginn!";
            _caller setVariable [MENU_STRING_3, MENU_NONE_3];
            _caller setVariable [AA_START_ABORT, false];
            [_caller,500,[sp_1,sp_2,sp_3,sp_4]] call Redd_fnc_aa_Aircraft_Attack;
        },
        [], 1, false, true, "",
        format ["_this getVariable [""%1"", %2] == %2", MENU_STRING_3, MENU_AA_START]
    ];
    _actionIndices pushBack _actionIndex;

    _player setVariable [ACTION_INDICES_STRING_3, _actionIndices];

    // abort
    private _actionIndex = _player addAction 
    [
        "<t size='1' color='#ff0000'>Übungsende</t>",
        { 
            params ["_target", "_caller"];
            _caller setVariable [MENU_STRING_3, MENU_AA_START];
            // clean up
            private _spawnedObjects = _caller getVariable [SPAWNED_OBJECTS_STRING_3, []];
            {
                deleteVehicle _x;
            } foreach _spawnedObjects;
            _caller setVariable [SPAWNED_OBJECTS_STRING_3, []];
            _caller setVariable [AA_START_ABORT, true];
            if (_caller getVariable [AA_START_ABORT,false]) then
            {
                hint "Übungsende, Übungsende!";
            }
            
        },
        [], 1, false, true, "",
        format ["_this getVariable [""%1"", %2] == %2", MENU_STRING_3, MENU_NONE_3]
    ];
    _actionIndices pushBack _actionIndex;

    _player setVariable [ACTION_INDICES_STRING_3, _actionIndices];

    // remove
    private _actionIndex = _player addAction 
    [
        "<t size='1' color='#ff0000'>Schießbahnleitung abgeben</t>",
        { 
            params ["_target", "_caller"];
            
            private _actionIndices = _caller getVariable [ACTION_INDICES_STRING_3, []];
            {
                _caller removeAction _x;
            } foreach _actionIndices;
            _caller setVariable [ACTION_INDICES_STRING_3, []];
            // clean up
            _caller setVariable [MENU_STRING_3, MENU_NONE_3];
            private _spawnedObjects = _caller getVariable [SPAWNED_OBJECTS_STRING_3, []];
            {
                deleteVehicle _x;
            } foreach _spawnedObjects;
            _caller setVariable [SPAWNED_OBJECTS_STRING_3, []]
            
        },
        [], 1, false, true, "",
        format ["count (_this getVariable [""%1"", []]) > 0", ACTION_INDICES_STRING_3]
    ];
    _actionIndices pushBack _actionIndex;

    _player setVariable [ACTION_INDICES_STRING_3, _actionIndices];

};