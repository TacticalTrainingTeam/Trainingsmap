/*
	author = Reimchen
	description = n.a.
*/

if (!isServer) exitWith {};

private _scriptHandle = [] spawn {

    //Trigger an/aus
    trigger_target_b_3 enableSimulationGlobal false;

    //Mörsereinschläge
    sleep (selectRandom [10,12,15]);

    private _targetMarkerAndSleepArray = [
        ["target_b_mortar_1", 2],
        ["target_b_mortar_2", 1],
        ["target_b_mortar_3", 1],
        ["target_b_mortar_1", 2],
        ["target_b_mortar_2", 1],
        ["target_b_mortar_3", 0]
    ];

    {
        _x params ["_targetMarker", "_sleepDuration"];
        "M_Mo_82mm_AT_LG" createVehicle getMarkerPos _targetMarker;
        sleep _sleepDuration;
    } foreach _targetMarkerAndSleepArray;

    sleep 45;
    [] call Reim_parcour_fnc_init;
};