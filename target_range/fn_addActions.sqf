if (hasInterface) then {
    params ["_object", "_position", "_rangeNumber"];

    private _actionTargetRangeDown =
    [
        "target_range_down",
        "Zielscheiben RUNTER",
        "",
        {
            params ["_target", "_caller", "_argv"];
            _target setVariable ["target_range_isUp", false, true];
            _argv remoteExec ["TargetRange_fnc_triggerTargets", 2];
            hint "Zeilscheiben sind unten.";
        },
        {
            params ["_target", "_caller"];
            _target getVariable ["target_range_isUp", true]
        },
        {},
        [_position, _rangeNumber, false]
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionTargetRangeDown] call ace_interact_menu_fnc_addActionToObject;
    
    private _actionTargetRangeUp =
    [
        "target_range_up",
        "Zielscheiben HOCH",
        "",
        {
            params ["_target", "_caller", "_argv"];
            _target setVariable ["target_range_isUp", true, true];
            _argv remoteExec ["TargetRange_fnc_triggerTargets", 2];
            hint "Zeilscheiben sind oben.";
        },
        {
            params ["_target", "_caller"];
            !(_target getVariable ["target_range_isUp", false])
        },
        {},
        [_position, _rangeNumber, true]
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionTargetRangeUp] call ace_interact_menu_fnc_addActionToObject;
};
