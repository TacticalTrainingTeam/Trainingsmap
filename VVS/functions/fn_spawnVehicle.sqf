/*
	File: fn_spawnVehicle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Spawns the selected vehicle, if a vehicle is already on the spawn point
	then it deletes the vehicle from the spawn point.
*/
disableSerialization;
private["_position","_direction","_className","_displayName","_spCheck","_cfgInfo"];
if(lnbCurSelRow 38101 == -1) exitWith {hint "You did not select a vehicle to spawn!"};

_className = lnbData[38101,[(lnbCurSelRow 38101),0]];
_displayName = lnbData[38101,[(lnbCurSelRow 38101),1]];
_position = getMarkerPos VVS_SP;
_direction = markerDir VVS_SP;

//Make sure the marker exists in a way.
if(isNil "_position") exitWith {hint "The spawn point marker doesn't exist?";};

//Check to make sure the spawn point doesn't have a vehicle on it, if it does then delete it.
_spCheck = nearestObjects[_position,["landVehicle","Air","Ship"],12] select 0;
if(!isNil "_spCheck") then {deleteVehicle _spCheck;};

_cfgInfo = [_className] call VVS_fnc_cfgInfo;

_vehicle = _className createVehicle _position;
_vehicle allowDamage false;
if(!isNil "_spCheck") then 
{
	_vehicle setPos _position; //Make sure it gets set onto the position.
};
_vehicle setDir _direction; //Set the vehicles direction the same as the marker.

if((_cfgInfo select 4) == "Autonomous") then
{
	createVehicleCrew _vehicle;
};

if(VVS_Checkbox) then
{
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
};

_vehicle allowDamage true;

// [_vehicle,["Fahrzeug despawnen", {params ["_target"];deleteVehicle _target;},[], 1.5, true, true, "","true",5]] remoteExec ["addAction",0,true];
// [_vehicle,["Fahrzeug reparieren",  { params ["_target"];_target setDamage 0;},[],1.5, true, true, "","true",5]] remoteExec ["addAction",0,true];

private _veh_despawn = ["veh_despawn", "Fahrzeug despawnen", "", {params ["_target", "_caller", "_args"]; _vehicle = _args select 0; deleteVehicle _vehicle;}, {true}, {}, [_vehicle]] call ace_interact_menu_fnc_createAction;
[_vehicle,0,["ACE_MainActions"], _veh_despawn] call ace_interact_menu_fnc_addActionToObject;

private _veh_repair = ["veh_repair", "Fahrzeug reparieren", "", {params ["_target", "_caller", "_args"]; _vehicle = _args select 0; _vehicle setDamage 0;}, {true}, {}, [_vehicle]] call ace_interact_menu_fnc_createAction;
[_vehicle,0,["ACE_MainActions"], _veh_repair] call ace_interact_menu_fnc_addActionToObject;

hint format["You have spawned a %1",_displayName];
closeDialog 0;
