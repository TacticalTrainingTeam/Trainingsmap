if (hasInterface) then {
    params ["_object", "_position", "_rangeNumber"];

    private _actionTargetRangeDown =
    [
        "target_range_down",
        "Übungsende",
        "",
        {   
            params ["_target", "_caller", "_argv"];
            _target setVariable ["target_range_isUp_cqb2", false, true];
            _target setVariable ["target_range_abort_cqb2", true, true];
            _argv spawn TargetRange_fnc_triggerTargets_cqb2;
            hint "Übungsende, Übungsende!";
        },
        {   
            params ["_target", "_caller"];
            _target getVariable ["target_range_isUp_cqb2", false]
        },
        {},
        [_object,_position, _rangeNumber, false]
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionTargetRangeDown] call ace_interact_menu_fnc_addActionToObject;

    private _actionTargetRangeUp =
    [
        "target_range_up",
        "Übungsbeginn",
        "",
        {
            params ["_target", "_caller", "_argv"];
            _target setVariable ["target_range_isUp_cqb2", true, true];
            _target setVariable ["target_range_abort_cqb2", false, true];
            _argv spawn TargetRange_fnc_triggerTargets_cqb2;
            hint "Übungsbeginn!";
        },
        {
            params ["_target", "_caller"];
            !(_target getVariable ["target_range_isUp_cqb2", false])
        },
        {},
        [_object,_position, _rangeNumber, true]
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionTargetRangeUp] call ace_interact_menu_fnc_addActionToObject;
};
