

params ["_targetRange","_trigger"];

switch (_targetRange) do 
{
    case 1: 
    { 
        _trigger enableSimulationGlobal false;
        _target = selectRandom [target_range_cqb_p_1_1,target_range_cqb_p_1_2];
        _target animate ["terc",0];
        missionNamespace setVariable ["reim_parcour_available_cqb_p_1", false, true];
        [] call Reim_parcour_fnc_init_cqb_p_1;
    };
    case 2: 
    { 
        _trigger enableSimulationGlobal false;
        _target = selectRandom [target_range_cqb_p_2_1,target_range_cqb_p_2_2];
        _target animate ["terc",0];
        missionNamespace setVariable ["reim_parcour_available_cqb_p_2", false, true];
        [] call Reim_parcour_fnc_init_cqb_p_2;
    };
    case 3: 
    { 
        _trigger enableSimulationGlobal false;
        _target = selectRandom [target_range_cqb_p_3_1,target_range_cqb_p_3_2];
        _target animate ["terc",0];
        missionNamespace setVariable ["reim_parcour_available_cqb_p_3", false, true];
        [] call Reim_parcour_fnc_init_cqb_p_3;
    };
    case 4: 
    { 
        _trigger enableSimulationGlobal false;
        _target = selectRandom [target_range_cqb_p_4_1,target_range_cqb_p_4_2];
        _target animate ["terc",0];
        missionNamespace setVariable ["reim_parcour_available_cqb_p_4", false, true];
        [] call Reim_parcour_fnc_init_cqb_p_4;
    };
    case 5: 
    { 
        _trigger enableSimulationGlobal false;
        _target = selectRandom [target_range_cqb_p_5_1,target_range_cqb_p_5_2];
        _target animate ["terc",0];
        missionNamespace setVariable ["reim_parcour_available_cqb_p_5", false, true];
        [] call Reim_parcour_fnc_init_cqb_p_5;
    };
    case 6: 
    { 
        _trigger enableSimulationGlobal false;
        _target = selectRandom [target_range_cqb_p_6_1,target_range_cqb_p_6_2];
        _target animate ["terc",0];
        missionNamespace setVariable ["reim_parcour_available_cqb_p_6", false, true];
        [] call Reim_parcour_fnc_init_cqb_p_6;
    };
    default { };
};