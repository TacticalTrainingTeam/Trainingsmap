/*
    Author: SpecOp0
    edit: Redd

    Description:
    AddsActions (ACE interaction) to object which is a training station for Mk6 Mortar (ACE, 3CB BAF).
    - Spawn Crate with Mortar
    - Spawn Crate with Mortar Ammo
    - Delete Crates
    - Assign player as FAC (see Spec_mortar_fnc_addActions)
    - Unassign player as FAC
    
    Parameter(s):
    0: OBJECT - object which is a training station
    
    Returns:
    true
*/
#include "const.hpp"

private _parameterCorrect =  params [ ["_object",objNull,[objNull]] ];

if(_parameterCorrect && hasInterface) then {
    // mortar crate
    [_object,0,["ACE_MainActions",ACTION_CRATE_MORTAR_ID]] call ace_interact_menu_fnc_removeActionFromObject;
    private _actionCrateMortar = [ACTION_CRATE_MORTAR_ID, ACTION_CRATE_MORTAR_NAME, "", {
        params ["_target","_caller"];
        private _crate = CRATE_MORTAR_CLASS createVehicle [0,0,0];
        _crate setPosATL (getPosATL moerser_spawn);
        clearWeaponCargoGlobal _crate;
        clearMagazineCargoGlobal _crate;
        clearItemCargoGlobal _crate;
        clearBackpackCargoGlobal _crate;
        _crate addItemCargoGlobal ["ACE_MapTools",3];
        _crate addItemCargoGlobal ["ACE_microDAGR",3];
        _crate addItemCargoGlobal ["ACE_RangeTable_82mm",3];
        _crate addItemCargoGlobal ["ACE_Vector",3];
        _crate addBackpackCargoGlobal ["Redd_Tank_M120_Tampella_Barrel",1];
        _crate addBackpackCargoGlobal ["Redd_Tank_M120_Tampella_Tripod",1];
        _crate addBackpackCargoGlobal ["tf_rt1523g_big",2];
    }, {true}] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionCrateMortar] call ace_interact_menu_fnc_addActionToObject;
    // mortar ammo crate
    [_object,0,["ACE_MainActions",ACTION_CRATE_AMMO_ID]] call ace_interact_menu_fnc_removeActionFromObject;
    private _actionCrateMortar = [ACTION_CRATE_AMMO_ID, ACTION_CRATE_AMMO_NAME, "", {
        params ["_target","_caller"];
        private _crate = CRATE_AMMO_CLASS createVehicle [0,0,0];
        _crate setPosATL (getPosATL moerser_spawn);
        //clearMagazineCargoGlobal _crate;
        //_crate addItemCargoGlobal ["Redd_1Rnd_120mm_Mo_shells",10];
        //_crate addItemCargoGlobal ["Redd_1Rnd_120mm_Mo_annz_shells",10];
        //_crate addItemCargoGlobal ["Redd_1Rnd_120mm_Mo_Smoke_white",2];
        //_crate addItemCargoGlobal ["Redd_1Rnd_120mm_Mo_Flare_white",2];
    }, {true}] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionCrateMortar] call ace_interact_menu_fnc_addActionToObject;
    // delete crates
    [_object,0,["ACE_MainActions",ACTION_CRATE_DELETE_ID]] call ace_interact_menu_fnc_removeActionFromObject;
    private _actionDeleteCrates = [ACTION_CRATE_DELETE_ID, ACTION_CRATE_DELETE_NAME, "", {
        params ["_target","_caller"];
        private _crates = nearestObjects [getPos _caller, [CRATE_MORTAR_CLASS,CRATE_AMMO_CLASS], 50];
        {
            if(!isNull _x) then {
                deleteVehicle _x;
            };
        } forEach _crates;
    }, {true}] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionDeleteCrates] call ace_interact_menu_fnc_addActionToObject;
    // add actions to player
    [_object,0,["ACE_MainActions",ACTION_ADD_ACTIONS_ID]] call ace_interact_menu_fnc_removeActionFromObject;
    private _actionAddActions = [ACTION_ADD_ACTIONS_ID, ACTION_ADD_ACTIONS_NAME, "", {
        params ["_target","_caller"];
        _caller call Spec_mortar_fnc_addActions;
    }, {true}] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionAddActions] call ace_interact_menu_fnc_addActionToObject;
    // remove actions from player
    [_object,0,["ACE_MainActions",ACTION_REMOVE_ACTIONS_ID]] call ace_interact_menu_fnc_removeActionFromObject;
    private _actionAddActions = [ACTION_REMOVE_ACTIONS_ID, ACTION_REMOVE_ACTIONS_NAME, "", {
        params ["_target","_caller"];
        [_caller,1,["ACE_SelfActions",ACTION_NEW_TARGET_ID]] call ace_interact_menu_fnc_removeActionFromObject;
        [_caller,1,["ACE_SelfActions",ACTION_LINER_ID]] call ace_interact_menu_fnc_removeActionFromObject;
        [_caller,1,["ACE_SelfActions",ACTION_TIP_ID]] call ace_interact_menu_fnc_removeActionFromObject;
        [_caller,1,["ACE_SelfActions",ACTION_SOLUTION_ID]] call ace_interact_menu_fnc_removeActionFromObject;
        private _mortarTarget = _caller getVariable [MORTAR_TARGET_VAR,objNull];
        if(!isNull _mortarTarget) then {
            deleteVehicle _mortarTarget;
            _caller setVariable [MORTAR_TARGET_VAR,objNull];
        };
    }, {true}] call ace_interact_menu_fnc_createAction;
    [_object,0,["ACE_MainActions"], _actionAddActions] call ace_interact_menu_fnc_addActionToObject;
};
true
