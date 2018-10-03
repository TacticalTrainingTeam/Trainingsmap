/*
	author = Reimchen
	description = n.a.
*/

_reim_jump_system = _this select 3 select 0;

_system_1 = (_this select 1) addAction ["Einzelsprung",{reim_jump_1 = false; reim_jump = true;},["system_1",_reim_jump_system],2,false,true];
_system_2 = (_this select 1) addAction ["Gruppensprung",{reim_jump_1 = false; reim_jump = true;},["system_2",_reim_jump_system],1,false,true];

switch (_reim_jump_system) do {
	case "system_1" {
	removeAllActions (_this select 1);
	reim_jump_grp = creategroup WEST;
	reim_jump_plane_1 = "xXx" createVehicle getMarkerPos "reim_jump_start";
	reim_jump_plane_1 engineOn true;
	reim_jump_plane_1 forceSpeed 200;
	reim_jump_plane_1 setDir ;
	reim_jump_pilot_1 = "O_G_Soldier_lite_F" createUnit [getMarkerPos _redd_panzerplatz_spawnMarker,_redd_Panzerplatz_Grp,{reim_jump_pilot_1_1 = this; this moveInDriver reim_jump_plane_1;}];
	reim_jump_plane_1 setPosASL [(),(),200];
	reim_jump_plane_1 flyInHigh 200;
	(_this select 1) moveInCargo reim_jump_plane_1;
	
	};
	case "system_2" {
	removeAllActions (_this select 1);
	
	
	
	};
};



reim_jump_1 = false; 
reim_jump = true;

