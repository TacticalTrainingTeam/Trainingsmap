params ["_unit", "_helm", "_tarn", "_farbe"];

_unit setRank "PRIVATE";

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
_unit addWeapon "arifle_SPAR_01_blk_F";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "30Rnd_556x45_Stanag_red";
_unit addWeapon "hgun_P07_blk_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform (["TTT_Uniform", _farbe, _tarn] joinString "_");
_unit addVest (["TTT_Vest_Heavy", _farbe, "US_Desert"] joinString "_");
_unit addBackpack "B_Kitbag_cbr";

comment "Add binoculars";
_unit addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "acex_intelitems_notepad";

for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_556x45_Stanag_red";};
_unit addItemToVest "ACE_NVG_Wide_Black";

_unit addItemToBackpack (["TTT_Helmet", _helm, _tarn] joinString "_");
for "_i" from 1 to 2 do {_unit addItemToBackpack "Titan_AT";};

_unit addHeadgear (["TTT_Beret", _farbe] joinString "_");

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 0, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;