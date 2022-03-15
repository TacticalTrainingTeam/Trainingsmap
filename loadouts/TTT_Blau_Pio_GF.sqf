params ["_unit", "_helm"];

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
_unit addWeapon "arifle_SPAR_01_blk_F";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "30Rnd_556x45_Stanag_Tracer_Red";
_unit addWeapon "hgun_P07_F";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform "TTT_Uniform_Blue_BW_Flecktarn";
_unit addVest "TTT_Vest_Heavy_Blue_US_Desert";
_unit addBackpack "B_Carryall_cbr";

comment "Add binoculars";
_unit addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 15 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ItemAndroid";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "acex_intelitems_notepad";

_unit addItemToVest "ACE_DefusalKit";
_unit addItemToVest "ACE_Clacker";
_unit addItemToVest "ACRE_PRC152";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
_unit addItemToVest "ACE_NVG_Wide_Black";

_unit addItemToBackpack (["TTT_Helmet_", _helm, "_BW_Flecktarn"] joinString "");
_unit addItemToBackpack "ACE_wirecutter";
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "ACE_VMH3";
_unit addItemToBackpack "SatchelCharge_Remote_Mag";
for "_i" from 1 to 3 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
_unit addItemToBackpack "ACE_SpraypaintRed";
_unit addItemToBackpack "ACE_SpraypaintGreen";
_unit addItemToBackpack "ACE_SpraypaintBlack";

_unit addHeadgear "TTT_Beret_Blue";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

_unit setVariable ["ace_medical_medicClass", 0, true];
_unit setVariable ["ACE_isEOD", true, true];
_unit setVariable ["ACE_isEngineer", 1, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;