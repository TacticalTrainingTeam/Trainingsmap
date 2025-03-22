if (hasInterface) then {
    params ["_object", "_position", "_rangeNumber"];

    private _actionTargetRangeDown =
    [
        "target_range_down",
        "Übungsende",
        "",
        {   
            params ["_target", "_caller", "_argv"];
            _target setVariable ["target_range_isUp_mg_zf", false, true];
            _target setVariable ["target_range_abort_mg_zf", true, true];
            _argv spawn TargetRange_fnc_triggerTargets_inf_mg_zf;
            hint "Übungsende, Übungsende!";
        },
        {   
            params ["_target", "_caller"];
            _target getVariable ["target_range_isUp_mg_zf", false]
        },
        {},
        [_object,_position, _rangeNumber, false]
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionTargetRangeDown] call ace_interact_menu_fnc_addActionToObject;

    private _actionTargetRangeUp =
    [
        "target_range_up",
        "Übungsbeginn: Alle Zielscheiben",
        "",
        {
            params ["_target", "_caller", "_argv"];
            _target setVariable ["target_range_isUp_mg_zf", true, true];
            _target setVariable ["target_range_abort_mg_zf", false, true];
            _argv spawn TargetRange_fnc_triggerTargets_inf_mg_zf;
            hint "Übungsbeginn!";
        },
        {
            params ["_target", "_caller"];
            !(_target getVariable ["target_range_isUp_mg_zf", false])
        },
        {},
        [_object,_position, _rangeNumber, true]
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionTargetRangeUp] call ace_interact_menu_fnc_addActionToObject;

    private _actionAutoTargetRangeUp =
    [
        "target_auto_range_up",
        "Übungsbeginn: Einzelne Zielscheiben (automatik)",
        "",
        {
            params ["_target", "_caller", "_argv"];
            _target setVariable ["target_range_isUp_mg_zf", true, true];
            _target setVariable ["target_range_abort_mg_zf", false, true];
            _argv spawn TargetRange_fnc_triggerTargets_inf_mg_zf_auto;
            hint "Übungsbeginn in wenigen Sekunden.\n 5 Ziele (automatisch), Zeit pro Ziel ca. 30 Sekunden";
        },
        {
            params ["_target", "_caller"];
            !(_target getVariable ["target_range_isUp_mg_zf", false])
        },
        {},
        [_object,_position, _rangeNumber, true]
    ] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionAutoTargetRangeUp] call ace_interact_menu_fnc_addActionToObject;
};
