params ["_unit", "_helm"];

_unit setRank "CORPORAL";

comment "Exported from Arsenal by Andx";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local _unit) exitWith {};

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add weapons";
_unit addWeapon "srifle_LRR_F";
_unit addPrimaryWeaponItem "optic_LRPS";
_unit addPrimaryWeaponItem "7Rnd_408_Mag";
_unit addWeapon "hgun_P07_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform "U_B_FullGhillie_lsh";
_unit addVest "TTT_Vest_Lite_Gold_US_Desert";
_unit addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
_unit addWeapon "ACE_Vector";

comment "Add items to containers";
for "_i" from 1 to 15 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addItemToUniform "acex_intelitems_notepad";

_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "ACE_ATragMX";
for "_i" from 1 to 4 do {_unit addItemToVest "7Rnd_408_Mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
_unit addItemToVest "ACE_NVG_Wide_Black";

_unit addItemToBackpack "ACE_Tripod";
for "_i" from 1 to 4 do {_unit addItemToBackpack "7Rnd_408_Mag";};

_unit addHeadgear "TTT_Beret_Gold";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 0, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;