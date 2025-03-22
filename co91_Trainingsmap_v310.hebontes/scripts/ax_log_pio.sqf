//Fills given object with a list of Items

params ["_containers"];

//Kisten befüllen skipt laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Kiste befüllen
[
    [_containers],
    [
	  ["DemoCharge_Remote_Mag", 30],
	  ["SatchelCharge_Remote_Mag", 10]
    ]
] call reim_fnc_crateFiller;