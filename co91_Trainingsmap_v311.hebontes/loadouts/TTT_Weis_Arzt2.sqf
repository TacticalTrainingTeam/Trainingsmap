params ["_unit", "_helm", "_tarn", "_farbe"];

_unit setRank "LIEUTENANT";

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
_unit addWeapon "SMG_03C_black";
_unit addPrimaryWeaponItem "50Rnd_570x28_SMG_03";
_unit addWeapon "hgun_P07_blk_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform (["TTT_Uniform", "white", _tarn] joinString "_");
_unit addVest (["TTT_Vest_Crew", "white"] joinString "_");
_unit addBackpack "B_Carryall_cbr";

comment "Add binoculars";
_unit addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Painkillers";
_unit addItemToUniform "ItemAndroid";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addItemToUniform "acex_intelitems_notepad";

_unit addItemToVest "ACRE_PRC152";
_unit addItemToVest "ACE_NVG_Wide_Black";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 3 do {_unit addItemToVest "50Rnd_570x28_SMG_03";};

_unit addItemToBackpack (["TTT_Helmet", _helm, _tarn] joinString "_");
for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 32 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 32 do {_unit addItemToBackpack "ACE_packingBandage";};
_unit addItemToBackpack "ACE_bodyBag";
for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_surgicalKit";};

_unit addHeadgear (["TTT_Beret", "white"] joinString "_");

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 2, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, true] call ace_safemode_fnc_setWeaponSafety;