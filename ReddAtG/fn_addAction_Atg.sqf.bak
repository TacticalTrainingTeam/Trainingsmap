if(hasInterface) then {

    params ["_object"];
    
    // add
    _object addAction 
    [
        "<t size='1' color='#008000'>Ich bin Schießbahnleitender</t>",
        { 
            params ["_target", "_caller"];
            missionNamespace setVariable ["actionNumber", 1];
            [_caller] call reddAtG_fnc_spawn_Atg;
        },
        [], 1, false, true, "",
        "(missionNamespace getVariable ['actionNumber',0]) == 0"
    ];
};