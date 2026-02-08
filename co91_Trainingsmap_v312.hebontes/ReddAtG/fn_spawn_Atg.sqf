

if(hasInterface) then 
{
    params ["_player"];

    _actionIndices = [];

    _player setVariable ["actionArray", _actionIndices];

    // type
    private _typeArray = [
    ["<t size='1' color='#0000FF'>Ziel: LKW</t>", 0],
    ["<t size='1' color='#008000'>Ziel: SPz</t>", 1],
    ["<t size='1' color='#FFFF00'>Ziel: KPz</t>", 2]
    ];

    {
        _x params ["_name", "_type"];
        _actionIndex = _player addAction 
        [
            _name,
            {
                params ["_target", "_caller", "_id", "_argv"];
                _argv params ["_type"];
                missionNamespace setVariable ["actionNumber", 2];
                missionNamespace setVariable ["atgAbort", false, true];
                [_caller, _type] spawn reddAtG_fnc_vehicles_Atg;
            },
            [_type], 1, false, false, "",
            "(missionNamespace getVariable ['actionNumber',0]) == 1"
        ];
        _actionIndices pushBack _actionIndex;
    } foreach _typeArray;

    // abort 
    private _actionIndex = _player addAction 
    [
        "<t size='1' color='#ff0000'>Übungsende</t>",
        { 
            params ["_target", "_caller"];
            hint "Übungsende, Übungsende!";
            missionNamespace setVariable ["actionNumber", 1];
            missionNamespace setVariable ["atgAbort", true];
            _targetArray = nearestObjects [(getMarkerPos "atgAreaMarker"), ["LandVehicle"], 2000];
            {
                deleteVehicle _x;
            }forEach _targetArray;
        },
        [], 1, false, true, "",
        "(missionNamespace getVariable ['actionNumber',0]) == 2"
    ];
    _actionIndices pushBack _actionIndex;

    // remove
    _actionIndex = _player addAction 
    [
        "<t size='1' color='#ff0000'>Schießbahnleitung abgeben</t>",
        { 
            params ["_target", "_caller"];
            
            _actionIndices = _caller getVariable ["actionArray",[]];
            {
                _caller removeAction _x;
            } foreach _actionIndices;
            _caller setVariable ["actionArray", []];
            missionNamespace setVariable ["actionNumber", 0];
        },
        [], 1, false, true, "",
        "(missionNamespace getVariable ['actionNumber',0]) == 1"
    ];
    _actionIndices pushBack _actionIndex;

    _player setVariable ["actionArray", _actionIndices];
};