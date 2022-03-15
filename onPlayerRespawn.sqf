// respawn disables spectator cam
["Terminate"] call BIS_fnc_EGSpectator;

// assigning loadouts on spawn
private _loadoutSQF = ["loadouts\", (player getVariable ["loadout", "TTT_Grun_Gren"]), ".sqf"] joinString "";
private _helm = (player getVariable ["helm", ""]);

[player, _helm] spawn compile preprocessFileLineNumbers _loadoutSQF;
