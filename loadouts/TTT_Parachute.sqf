params ["_unit"];

_backpack = unitBackpack _unit;
_boc = [_unit] call zade_boc_fnc_chestpack;

if (isNull _backpack) then {
	_unit addBackpack "B_Parachute";
	hint "Fallschirm auf Rücken ausgerüstet!";
} else {

	if (_boc == "") then {
		[_unit, "B_Parachute"] call zade_boc_fnc_addChestpack;
		hint "Fallschirm auf Bauch ausgerüstet!";
	} else {
		hint "Kein Platz für Fallschirm!";
	};

};

_unit linkItem "ACE_Altimeter";
