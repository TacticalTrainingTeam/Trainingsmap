/*
	author = Reimchen
	description = n.a.
*/

//vvs
sign_luftfahrtgelaende addAction ["Luftfahrzeuge spawnen",VVS_fnc_openVVS,["spawn_luftfahrtgelaende","Air"],6,false,true,"","",5];

//zum UAV-Operator machen
sign_luftfahrtgelaende addAction ["Zum UAV-Operator machen",{(_this select 1) addItem "B_UavTerminal";},[],5,false,true,"","",5];

//reim_jump
sign_luftfahrtgelaende addAction ["Fallschirmtraining starten",{hint "Noch im Bau";},[],1,false,true,"","",5];
/*
sign_luftfahrtgelaende addAction ["Fallschirmtraining starten",{reim_jump = false;},[],4,false,true,"","reim_jump",5];
sign_luftfahrtgelaende addAction ["- Systemsprung","reim_jump\system.sqf",[],3,false,true,"","!reim_jump",5];
sign_luftfahrtgelaende addAction ["- HALO-Sprung","reim_jump\halo.sqf",[],2,false,true,"","!reim_jump",5];
sign_luftfahrtgelaende addAction ["- HAHO-Sprung","reim_jump\haho.sqf",[],1,false,true,"","!reim_jump",5];
*/