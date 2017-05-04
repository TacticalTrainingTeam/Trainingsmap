/*
	author = Reimchen
	description = n.a.
*/

// Showcase AI
{
    _x disableAI "MOVE";
    _x forceSpeed 0;
    _x setVariable ["acex_headless_blacklist", true];
} forEach [ai_a_1,ai_a_2,ai_a_3,ai_a_4,ai_a_5,ai_a_6,ai_a_7,ai_a_8,ai_a_9,ai_a_10,ai_a_11,ai_a_12,ai_b_1,ai_b_2,ai_b_3,ai_b_4,ai_c_1,ai_c_2,ai_c_3,ai_c_4];

// disable popup targets in target range
private _targetArray = nearestObjects [getMarkerPos "target_range", ["TargetBase"], 250];
{
    if(_x getVariable ["target_range", -1] != -1) then {
        _x animate ["terc",1];
    };
} foreach _targetArray;

// sleep because the AI uses moves down and/or rests weapon in init field
private _scriptHandle = [] spawn {
sleep 5;
{
    _x disableAI "ALL";
    removeAllAssignedItems _x;
    removeBackpack _x;
} forEach [ai_a_1,ai_a_2,ai_a_3,ai_a_4,ai_a_5,ai_a_6,ai_a_7,ai_a_8,ai_a_9,ai_a_10,ai_a_11,ai_a_12,ai_b_1,ai_b_2,ai_b_3,ai_b_4,ai_c_1,ai_c_2,ai_c_3,ai_c_4];
};

// create center to spawn enemies or civilian in other scripts
EastHQ = createCenter EAST;
CivHQ = createCenter CIVILIAN;