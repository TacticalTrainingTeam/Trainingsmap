/*
    author = Reimchen
    edit: Redd
    description = n.a.
*/

if(hasInterface) then 
{
    {
        [_x] call Reim_teleporter_fnc_addActions;
    } 
    foreach 
    [
        flag_Infanterie_Gefechtsschiessbahn,
        flag_Infanterie_Schulschiessbahn,
        flag_Scharfschuetzen_Schulschiessbahn,
        flag_Kpz_Spz_Gefechtsschiessbahn,
        flag_Kpz_Spz_Schulschiessbahn,
        flag_AT_Schiessbahn,
        flag_uebungsplatz,
        flag_aa_Schiessbahn,
        flag_Handgranaten,
        flag_cqb,
        flag_fzg,
        flag_kpz_gsch_zug,
        flag_spz_gesch_zug,
        flag_trpPlz,
        flag_cas,
        flag_medizinischerbereich,
        flag_pionierplatz,
        flag_luftfahrgelaende,
        flag_moerserplatz,
        ttt_teleport_teleporter
    ];

};