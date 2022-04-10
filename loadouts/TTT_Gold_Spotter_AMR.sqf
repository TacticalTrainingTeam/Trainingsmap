params ["_unit", "_helm", "_tarn", "_farbe"];

_unit setRank "SERGEANT";

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
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_ams";
_unit addPrimaryWeaponItem "ACE_20Rnd_762x51_Mag_SD";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
_unit addWeapon "hgun_P07_blk_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform "U_B_FullGhillie_lsh";
_unit addVest (["TTT_Vest_Lite", "gold", "US_Desert"] joinString "_");
_unit addBackpack (["TTT_backpack_radio", "gold", "US_Desert"] joinString "_");

comment "Add binoculars";
_unit addWeapon "ACE_Vector";

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
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addItemToUniform "ItemAndroid";
_unit addItemToUniform "acex_intelitems_notepad";
_unit addItemToUniform "ACE_microDAGR";

_unit addItemToVest "ACE_Kestrel4500";
_unit addItemToVest "ACE_ATragMX";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
for "_i" from 1 to 6 do {_unit addItemToVest "ACE_20Rnd_762x51_Mag_SD";};
_unit addItemToVest "ACE_NVG_Wide_Black";

_unit addItemToBackpack "ACE_SpottingScope";
_unit addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 4 do {_unit addItemToBackpack "5Rnd_127x108_APDS_Mag";};

_unit addHeadgear (["TTT_Beret", "gold"] joinString "_");

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 0, true];
_unit setVariable ["ACE_isEOD", false, true];
_unit setVariable ["ACE_isEngineer", 0, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;