#define NONE -1
#define AI 0
#define TARGETS 1

if(hasInterface) then {
    params [ "_object", ["_variablePrefix","cqb_a",[""]] ];
    
    private _actionSpawnAI =
    [
        "Reim_cqb_spawnAI",
        "Spawne 'KI-Gegner'",
        "",
        {
            params ["_target", "_caller"];
            [true] remoteExecCall ["Reim_cqb_fnc_spawn_a", 2];
            _target setVariable ["cqb", AI, true];
            hint "KI-Gegner wurden im CQB-Bereich platziert.";
        },
        {
            params ["_target", "_caller"];
            _target getVariable ["cqb", NONE] == NONE
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionSpawnAI] call ace_interact_menu_fnc_addActionToObject;
    
    private _actionSpawnTargets =
    [
        "Reim_cqb_spawnTargets",
        "Spawne 'Zielscheiben' (wieder hoch)",
        "",
        {
            params ["_target", "_caller"];
            [false] remoteExecCall ["Reim_cqb_fnc_spawn_a", 2];
            _target setVariable ["cqb", TARGETS, true];
            hint "Zielscheiben wurden im CQB-Bereich platziert.";
        },
        {
            params ["_target", "_caller"];
            private _targetType = _target getVariable ["cqb", NONE];
            _targetType == NONE || _targetType == TARGETS
        }
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionSpawnTargets] call ace_interact_menu_fnc_addActionToObject;
    
    private _actionAbort =
    [
        "Reim_cqb_abort",
        "Übung beenden / Ziele entfernen",
        "",
        {
            params ["_target", "_caller", "_id", "_argv"];
            _argv params ["_variablePrefix"];
            [_variablePrefix] remoteExecCall ["Reim_cqb_fnc_clean", 2];
            _target setVariable ["cqb", NONE, true];
            hint "CQB Bereich wurde aufgeräumt.";
        },
        {
            params ["_target", "_caller"];
            _target getVariable ["cqb", NONE] != NONE
        },
        {},
        [_variablePrefix]
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionAbort] call ace_interact_menu_fnc_addActionToObject;


};
