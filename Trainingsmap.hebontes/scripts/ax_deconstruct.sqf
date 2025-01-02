/*
    author: [TTT] Andx
    description: add action to deconstruct objects, like Czech Hedghogs. Player needs a Toolkit in inventory and the "ACE_IsEngineer" trait.

    usage (initPlayerLocal.sqf):
    [] call compile preprocessFileLineNumbers "scripts\andx_deconstruct.sqf";

    _objects : array of all objects that can be deconstructed
    andx_anim : animation the player charakter plays while deconstructing
    andx_time : duration the process takes

    last updated: 12.11.2021 by [TTT] Andx
*/
_objects = ["Land_CzechHedgehog_01_new_F", "Land_CzechHedgehog_01_old_F"];
andx_anim = "Acts_carFixingWheel";
andx_time = 19;

andx_remove_object_progressbar = {
    params ["_target","_caller","_arguments"];

    _caller playMove andx_anim;

    [andx_time, _this, {(_this select 0) params ["_target"]; deleteVehicle _target;}, {(_this select 0) params ["_target","_caller"]; hint "Abgebrochen!"; _caller switchMove "";}, "Entferne Sperre"] call ace_common_fnc_progressBar;
};

andx_can_remove = {
    params ["_target","_caller","_arguments"];

    _bool = false;

    if (([_caller, "Toolkit"] call BIS_fnc_hasItem) and ([_caller, 1] call ace_repair_fnc_isEngineer)) then {
        _bool = true;
    };

    _bool;
};

//Aktion erstellen
_removeObject = ["andx_remove_object", "Sperre entfernen", "",
   andx_remove_object_progressbar, andx_can_remove
] call ace_interact_menu_fnc_createAction;

//Action an alle Objekte anfügen
{
    [_x, 0, ["ACE_MainActions"], _removeObject] call ace_interact_menu_fnc_AddActionToClass;
} forEach _objects;