/*
	author = Reimchen
    edit = Redd
	description = n.a.
*/

if(!isServer) exitWith {};

if(!(missionNamespace getVariable ["reim_parcour_available_cqb_p_6", false])) then 
{

    missionNamespace setVariable ["reim_parcour_available_cqb_p_6", true, true];

    // Trigger Parcour
    {
        _x enableSimulationGlobal false;
    } 
    forEach 
    [
        trigger_cqb_p_6_1, 
        trigger_cqb_p_6_2, 
        trigger_cqb_p_6_3,
        trigger_cqb_p_6_4
    ];

    // Popup runter
    // get all targets
    private _targetArray = nearestObjects [(getMarkerPos "target_range_cqb"), ["TargetBase"], 300];

    // filter targets by wave (variable set in editor) and move down
    {
        if(_x getVariable ["target_range_cqb_p", 6] == 6) then {
            _x animate ["terc",1];
        };
    } foreach _targetArray;
};