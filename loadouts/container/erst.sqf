params ["_unit","_head_headgear","_inventory_headgear"];

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

private _newBackpack = "B_Kitbag_rgr";
private _oldBackpack = backpack _unit;
if (_oldBackpack != _newBackpack) then {
        removeBackpack _unit;
        _unit addBackpack _newBackpack;
};
_unit addHeadgear _head_headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "TFAR_anprc152";

for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";

for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {_unit addItemToVest "MiniGrenade";};
for "_i" from 1 to 5 do {_unit addItemToVest "ace_epinephrine";};
_unit addItemToVest "ACE_NVG_Wide";

for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_tourniquet";};
_unit addItemToBackpack "ACE_morphine";
_unit addItemToBackpack _inventory_headgear;
for "_i" from 1 to 11 do {_unit addItemToBackpack "ace_fieldDressing";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ace_packingbandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ace_tourniquet";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ace_salineiv_500";};
for "_i" from 1 to 8 do {_unit addItemToBackpack "ace_quikclot";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ace_morphine";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ace_epinephrine";};
for "_i" from 1 to 1 do {player addItemToBackpack "adv_aceCPR_AED";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_surgicalKit";};

[_unit, "hgun_PDW2000_F", 4] call BIS_fnc_addWeapon;
[_unit, "hgun_ACPC2_F", 3] call BIS_fnc_addWeapon;
_unit addHandgunItem "acc_flashlight_pistol";
_unit addWeapon "Binocular";

//
_unit setVariable ["ace_medical_medicClass",2,true];
[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
