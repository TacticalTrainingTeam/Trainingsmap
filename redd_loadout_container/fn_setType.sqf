

//author: Redd

params ["_unit","_type",["_head_headgear",""],["_inventory_headgear",""]];

_unit setVariable ["ACE_isEOD",false,true];
_unit setVariable ["ace_medical_medicClass",0,true];

switch(_type) do
{
	case ("opl"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\gelb.sqf";};
	case ("fac"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\fac.sqf";};
	case ("grpfhr"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\grpfhr.sqf";};
	case ("trpfhr"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\trpfhr.sqf";};
	case ("zf"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\zf.sqf";};
	case ("gren"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\gren.sqf";};
	case ("lmg"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\lmg.sqf";};
	case ("mgh"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\mgh.sqf";};
	case ("mg"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\mg.sqf";};
	case ("at"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\at.sqf";};
	case ("pio"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\pio.sqf";};
	case ("auf"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\auf.sqf";};
	case ("uav"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\uav.sqf";};
	case ("arzt"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\arzt.sqf";};
	case ("erst"): {[_unit,_head_headgear,_inventory_headgear] call compile preProcessFileLineNumbers "loadouts\container\erst.sqf";};
	default {[_unit] call compile preProcessFileLineNumbers "loadouts\container\gelb.sqf";};
};