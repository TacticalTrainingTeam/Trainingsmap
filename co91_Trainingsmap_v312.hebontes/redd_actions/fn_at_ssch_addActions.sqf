#include "const.hpp"

if(hasInterface) then 
{

    params ["_player"];

    private _actionIndices = [];

    //man-auto
    private _durchgang_Array = 
    [
        ["<t size='1' color='#0000FF'>Übungsbeginn: Manueller Durchgang</t>", MAN_2],
        ["<t size='1' color='#008000'>Übungsbeginn: Automatik Durchgang</t>", AUTO_2]
    ];

    {
        _x params ["_name", "_type"];
        _actionIndex = _player addAction 
        [
            _name,
            {
                params ["_target", "_caller", "_id", "_argv"];
                
                _argv params ["_type"];
                _caller setVariable [MAN_AUTO_STRING_2, _type];
                
                if (_type == MAN) then
                {
                    _caller setVariable [MENU_STRING_2, MENU_MAN_2];
                }
                else
                {
                    _caller setVariable [MENU_STRING_2, MENU_AUTO_2];
                    [_caller] spawn Redd_fnc_at_ssch_auto;
                };
            },
            [_type], 1, false, false, "",
            format ["_this getVariable [""%1"", %2] == %2", MENU_STRING_2, MENU_MAN_AUTO_2]
        ];
        _actionIndices pushBack _actionIndex;
    } foreach _durchgang_Array;

    // type
    private _typeArray = [
    ["<t size='1' color='#0000FF'>Ziel: LKW</t>", TYPE_SOFT_2],
    ["<t size='1' color='#008000'>Ziel: SPz</t>", TYPE_MEDIUM_2],
    ["<t size='1' color='#FFFF00'>Ziel: KPz</t>", TYPE_HARD_2]
    ];

    {

        _x params ["_name", "_type"];
        _actionIndex = _player addAction [
            _name,
            {
                params ["_target", "_caller", "_id", "_argv"];
                _argv params ["_type"];
                _caller setVariable [TYPE_STRING_2, _type];
                _caller setVariable [MENU_STRING_2, MENU_TYPE_2];
            },
            [_type], 1, false, false, "",
            format ["_this getVariable [""%1"", %2] == %2", MENU_STRING_2, MENU_MAN_2]
        ];
        _actionIndices pushBack _actionIndex;
    } foreach _typeArray;

    // distance
    private _distanceArray = [
        ["<t size='1' color='#0000FF'>Entfernung: Nah</t>", DISTANCE_NEAR_2],
        ["<t size='1' color='#008000'>Entfernung: Mittel</t>", DISTANCE_MEDIUM_2],
        ["<t size='1' color='#FFFF00'>Entfernung: Weit</t>", DISTANCE_FAR_2]
    ];

    {
        _x params ["_name", "_distance"];
        _actionIndex = _player addAction [
            _name,
            {
                params ["_target", "_caller", "_id", "_argv"];
                _argv params ["_distance"];
                _caller setVariable [MENU_STRING_2, MENU_MAN_RUN_2];
                _caller setVariable [DISTANCE_STRING_2, _distance];
                private _type = _caller getVariable [TYPE_STRING_2, TYPE_SOFT_2];
                private _distance = _caller getVariable [DISTANCE_STRING_2, DISTANCE_NEAR_2];
                [_caller, _type, _distance] spawn Redd_fnc_at_ssch_man;
            },
            [_distance], 1, false, false, "",
            format ["_this getVariable [""%1"", %2] == %3", MENU_STRING_2, MENU_NONE_2, MENU_TYPE_2]
        ];
        _actionIndices pushBack _actionIndex;
    } foreach _distanceArray;

    // abort
    private _actionIndex = _player addAction [
        "<t size='1' color='#ff0000'>Übungsende</t>",
        { 
            params ["_target", "_caller"];

            hint "Übungsende, Übungsende!";
            _caller setVariable [MENU_STRING_2, MENU_MAN_AUTO_2];
            _caller setVariable [AUTO_ABORT_STRING_2, -1];
            private _targetArray = nearestObjects [center_target_at_schulschiessen, ["TargetBase"], 450];
            {
                _x animate ["terc",1];
            } foreach _targetArray
        },
        [], 1, false, true, "",
        format ["_this getVariable [""%1"", %2] >= %3", MENU_STRING_2, MENU_NONE_2, MENU_MAN_2]
    ];
    _actionIndices pushBack _actionIndex;

    _player setVariable [ACTION_INDICES_STRING_2, _actionIndices];

    // remove
    private _actionIndex = _player addAction [
        "<t size='1' color='#ff0000'>Schießbahnleitung abgeben</t>",
        { 
            params ["_target", "_caller"];
            
            private _actionIndices = _caller getVariable [ACTION_INDICES_STRING_2, []];
            {
                _caller removeAction _x;
            } foreach _actionIndices;
            _caller setVariable [ACTION_INDICES_STRING_2, []];
            // clean up
            _caller setVariable [MENU_STRING_2, MENU_NONE_2];
            _caller setVariable [AUTO_ABORT_STRING_2, -1];
            private _targetArray = nearestObjects [center_target_at_schulschiessen, ["TargetBase"], 250];
            {
                _x animate ["terc",1];
            } foreach _targetArray

        },
        [], 1, false, true, "",
        format ["count (_this getVariable [""%1"", []]) > 0", ACTION_INDICES_STRING_2]
    ];
    _actionIndices pushBack _actionIndex;

    _player setVariable [ACTION_INDICES_STRING_2, _actionIndices];

};