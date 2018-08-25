/*
	author = Reimchen
	description = n.a.
*/

// W-Teleporter
{
    _x addAction ["W-Teleporter",{createDialog "W_RscTeleportDialog"},[],1,false,true,"","",5];
} forEach [
    flag_sammelplatz,
    flag_ttt_boden,
    flag_ttt_luft,
    flag_uebungsplatz,
    flag_medizinischerbereich,
    flag_pionierplatz,
    flag_panzerplatz,
    flag_luftfahrgelaende,
    flag_cqb,
    flag_moerserplatz,
    flag_showcase_oben
];

// spectator cam and clean up near base
flag_sammelplatz addAction ["Zuschauermodus", {
    params ["_target","_caller"];
    ["Initialize", [_caller, [], true]] call BIS_fnc_EGSpectator;
},[],0.5,false,true,"","",5];
player addEventHandler ["Respawn",{
    params ["","_corpse"];
    if((getPosASL player) distance (getMarkerPos "respawn") < 1000) then {
        deleteVehicle _corpse;
    };
}];

private _actionPlaceholder =
[
    "placeholder",
    "Noch im Bau",
    "",
    {
        hint "Hier ist noch nichts.";
    },
    {true}
] call ace_interact_menu_fnc_createAction;

// sign_sammelplatz
[] call compile preprocessFileLineNumbers "actions\sign_sammelplatz.sqf";

// sign_cqb
[sign_cqb_2,0,["ACE_MainActions"], _actionPlaceholder] call ace_interact_menu_fnc_addActionToObject;

// sign_luftfahrtgelaende
[] call compile preprocessFileLineNumbers "actions\sign_luftfahrtgelaende.sqf";

// arsenal
{
    _x call Reim_arsenal_fnc_addActions;
} foreach [arsenal_1,arsenal_2,arsenal_3,arsenal_4];

// spec_mortar
[flag_moerserplatz] call Spec_mortar_fnc_addTrainingStation;

// spec_medic
[sign_medizinischerbereich, medic_mat_2, "Medic Dummy B"] call Spec_medic_fnc_addTrainingStation;
[sign_medizinischerbereich, medic_mat_1, "Medic Dummy A"] call Spec_medic_fnc_addTrainingStation;

// Spawn Meldung
[] spawn {
	if (hasInterface) then {
        if !(395180 in (getDLCs 1)) then {
            hint parseText "<t size=2 color='#FF0000'>APEX nicht vorhanden!</t><br/>Willkommen auf der Trainingsmap des Tactical Training Team. Um bei uns mitzuspielen benötigst du APEX.<br/><br/>Für weitere Information besuche unsere Homepage: www.tacitalteam.de.";
            playSound3D ["A3\Sounds_F\sfx\alarm.wss", player];
        } else {
            hintsilent "Bist du zum ersten mal hier und brauchst Hilfe? Dann gehe zum Laptop, der vor dir auf den Tisch steht und starte das Tutorial mithilfe des Mausrad.";
        }
    };
};

//
laptopHangar_1 addAction ["180°Sicherung(4)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_4_180sicherung_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["360°Sicherung(4)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_4_360sicherung_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Keil(4)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_4_keil_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Kette(4)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_4_kette_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Kolonne(4)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_4_kolonne_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Stack(4)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_4_stack_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["180°Sicherung(6)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_6_180sicherung_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["360°Sicherung(6)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_6_360sicherung_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Kette(6)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_6_kette_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Kolonne(6)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_6_kolonne_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Stack(6)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_6_stack_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Keil(8)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_8_keil_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Kette(8)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_8_kette_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Kolonne(8)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_8_kolonne_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Zug Kolonne",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_zug_kolonne_co.paa"];},[],1,false,true,"","",5];
laptopHangar_1 addAction ["Zug Kolonne(Weit)",{boardHangar_1 setObjectTextureGlobal [0, "\ttt_a3\ttt_signs\data\ttt_tafel_weit_zug_kolonne_co.paa"];},[],1,false,true,"","",5];
