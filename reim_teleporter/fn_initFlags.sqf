/*
	author = Reimchen
	description = n.a.
*/

if(hasInterface) then {
    {
        [_x] call Reim_teleporter_fnc_addActions;
    } foreach [
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

    [flag_cqb_2, "Zum Start 1", "teleport_cqb_1"] call Reim_teleporter_fnc_addTeleportToMarkerAction;
    [flag_cqb_2, "Zum Start 2", "teleport_cqb_2"] call Reim_teleporter_fnc_addTeleportToMarkerAction;

    [flag_showcase_oben, "Nach unten", "teleport_showcase_unten"] call Reim_teleporter_fnc_addTeleportToMarkerAction;
    [flag_showcase_unten, "Nach oben", "teleport_showcase_oben"] call Reim_teleporter_fnc_addTeleportToMarkerAction;

};