/*
	author = Reimchen
	description = n.a.
*/

//WIP
/*
sign_sammelplatz_1 addAction ["Pioniertutorial starten",{createDialog "reim_text"; [] call REIM_fnc_pionier;},[],1,false,true,"","",5];
sign_sammelplatz_2 addAction ["Panzertutorial starten",{createDialog "reim_text"; [] call REIM_fnc_panzer;},[],1,false,true,"","",5];
sign_sammelplatz_3 addAction ["Medictutorial starten",{createDialog "reim_text"; [] call REIM_fnc_medic;},[],1,false,true,"","",5];
sign_sammelplatz_4 addAction ["Helitutorial starten",{createDialog "reim_text"; [] call REIM_fnc_heli;},[],1,false,true,"","",5];
sign_sammelplatz_5 addAction ["Waffentutorial starten",{createDialog "reim_text"; [] call REIM_fnc_waffen;},[],1,false,true,"","",5];
sign_sammelplatz_6 addAction ["CQB-Tutorial starten",{createDialog "reim_text"; [] call REIM_fnc_cqb;},[],1,false,true,"","",5];
sign_sammelplatz_7 addAction ["Mörsertutorial starten",{createDialog "reim_text"; [] call REIM_fnc_moerser;},[],1,false,true,"","",5];
sign_sammelplatz_8 addAction ["Hier könnte deine Idee stehen",{},[],1,false,true,"","",5];
sign_sammelplatz_9 addAction ["WIP",{},[],1,false,true,"","",5];
*/
sign_sammelplatz_1 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_2 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_3 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_4 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_5 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_6 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_7 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_8 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_9 addAction ["Noch im Bau","",[],1,false,true,"","",5];
sign_sammelplatz_10 addAction ["Tutorial starten",{createDialog "reim_text"; [] call REIM_fnc_tutorial;},[],1,true,true,"","",7];

//spawn_ttt_luft/boden/kisten
ai_b_1 addAction ["TTT-Luftfahrzeuge spawnen",VVS_fnc_openVVS,["spawn_ttt_luft","Autonomous"],1,false,true,"","",5];
[ai_b_1, "spawn_ttt_luft", 1, 5] call Spec_fullheal_fnc_addAssignVehicleAction;
ai_b_2 addAction ["TTT-Bodenfahrzeuge spawnen",VVS_fnc_openVVS,["spawn_ttt_boden","Submarine"],1,false,true,"","",5];
[ai_b_2, "spawn_ttt_boden", 1, 5] call Spec_fullheal_fnc_addAssignVehicleAction;
ai_b_3 addAction ["TTT-Kisten spawnen",VVS_fnc_openVVS,["spawn_ttt_kisten","Support"],1,false,true,"","",5];