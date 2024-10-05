params ["_unit", "_helm", "_tarn", "_farbe"];

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
_unit addWeapon "arifle_SPAR_03_blk_F";
_unit addPrimaryWeaponItem "muzzle_snds_B";
_unit addPrimaryWeaponItem "bwa3_acc_varioray_irlaser_black";
_unit addPrimaryWeaponItem "optic_SOS";
_unit addPrimaryWeaponItem "ACE_20Rnd_762x51_Mag_SD";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
_unit addWeapon "hgun_P07_blk_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform (["TTT_Uniform", "gold", _tarn] joinString "_");
_unit addVest (["TTT_Vest_lite", "gold", "US_Desert"] joinString "_");
_unit addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
_unit addMagazine "Laserbatteries";
_unit addWeapon "Laserdesignator_01_khk_F";

comment "Add items to containers";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Painkillers";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "acex_intelitems_notepad";

for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
for "_i" from 1 to 8 do {_unit addItemToVest "ACE_20Rnd_762x51_Mag_SD";};

_unit addItemToBackpack (["TTT_Helmet", _helm, _tarn] joinString "_");
_unit addItemToBackpack "ITC_Land_B_AR2e_Packed";
_unit addItemToBackpack "ACE_RangeCard";
_unit addItemToBackpack "ACE_NVG_Wide_Black";

_unit addHeadgear (["TTT_Beret", "gold"] joinString "_");

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "B_UavTerminal";

_unit setVariable ["ace_medical_medicClass", 0, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;