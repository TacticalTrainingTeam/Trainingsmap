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