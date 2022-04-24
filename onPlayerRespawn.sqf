// respawn disables spectator cam
["Terminate"] call BIS_fnc_EGSpectator;

// assigning loadouts on spawn
private _loadoutSQF = ["loadouts\", (player getVariable ["loadout", "TTT_Rifle"]), ".sqf"] joinString "";
private _helm = (player getVariable ["helm", "1"]);
private _tarn = (player getVariable ["tarn", "BW_Flecktarn"]);
private _farbe = (player getVariable ["farbe", "green"]);

[player, _helm, _tarn, _farbe] spawn compile preprocessFileLineNumbers _loadoutSQF;
