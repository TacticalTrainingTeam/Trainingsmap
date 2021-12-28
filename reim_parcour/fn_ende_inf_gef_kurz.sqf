/*
	author = Reimchen
    edit: Redd
	description = n.a.
*/

if (!isServer) exitWith {};

private _scriptHandle = [] spawn {

    //Trigger an/aus
    trigger_target_k_4 enableSimulationGlobal false;

    /*
    //hold on, wait a minute, or half a minute ;)
    sleep (selectRandom [10,12,15]);

    //pop red smoke to force retreat 
    _smoke = "SmokeShellRed" createVehicle getMarkerPos "target_grenade_k_1";
    sleep 2;
    _smoke_1 = "SmokeShellRed" createVehicle getMarkerPos "target_grenade_k_2";

    sleep 10;

    deleteVehicle _smoke;
    deleteVehicle _smoke_1;

    sleep 35;
    */
    [] call Reim_parcour_fnc_init_inf_gef_kurz;

};