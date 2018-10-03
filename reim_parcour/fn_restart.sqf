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

    //Scheiben runter
    sleep 0;//45;
    {
        _x animate ["terc",1];
    } forEach [
        target_b_1,
        target_b_2,
        target_b_3,
        target_b_4,
        target_b_5,
        target_b_6,
        target_b_7,
        target_b_8,
        target_b_9,
        target_b_10,
        target_b_11,
        target_b_12,
        target_b_13,
        target_b_14,
        target_b_15,
        target_b_16,
        target_b_17,
        target_b_18,
        target_b_19,
        target_b_20,
        target_b_21,
        target_b_22,
        target_b_23,
        target_b_24,
        target_b_25,
        target_b_26,
        target_b_27,
        target_b_28,
        target_b_29,
        target_b_30,
        target_b_31,
        target_b_32,
        target_b_33,
        target_b_34,
        target_b_35,
        target_b_36,
        target_b_37,
        target_b_38,
        target_b_39,
        target_b_40,
        target_b_41
    ];

    //publicVariable
    missionNamespace setVariable ["reim_parcour_available", true, true];
};